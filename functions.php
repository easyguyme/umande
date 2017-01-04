<?php
/**
 * Created by PhpStorm.
 * User: Imran
 * Date: 12/21/2016
 * Time: 5:25 PM
 */


function getRealIp() {
    if (!empty($_SERVER['HTTP_CLIENT_IP'])) {  //check ip from share internet
        $ip=$_SERVER['HTTP_CLIENT_IP'];
    } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {  //to check ip is pass from proxy
        $ip=$_SERVER['HTTP_X_FORWARDED_FOR'];
    } else {
        $ip=$_SERVER['REMOTE_ADDR'];
    }
    return $ip;
}

function writeLog($where) {

    $ip = getRealIp(); // Get the IP from superglobal
    $host = gethostbyaddr($ip);    // Try to locate the host of the attack
    $date = date("d M Y");

    // create a logging message with php heredoc syntax
    $logging = <<<LOG
    		\n
    		<< Start of Message >>
    		There was a hacking attempt on your form. \n
    		Date of Attack: {$date}
    		IP-Adress: {$ip} \n
    		Host of Attacker: {$host}
    		Point of Attack: {$where}
    		<< End of Message >>
LOG;
// Awkward but LOG must be flush left

    // open log file
    if($handle = fopen('hacklog.log', 'a')) {

        fputs($handle, $logging);  // write the Data to file
        fclose($handle);           // close the file

    } else {  // if first method is not working, for example because of wrong file permissions, email the data

        $to = 'ADMIN@gmail.com';
        $subject = 'HACK ATTEMPT';
        $header = 'From: ADMIN@gmail.com';
        if (mail($to, $subject, $logging, $header)) {
            echo "Sent notice to admin.";
        }

    }
}

function verifyFormToken($form) {

    // check if a session is started and a token is transmitted, if not return an error
    if(!isset($_SESSION[$form.'_token'])) {
        return false;
    }

    // check if the form is sent with token in it
    if(!isset($_POST['token'])) {
        return false;
    }

    // compare the tokens against each other if they are still the same
    if ($_SESSION[$form.'_token'] !== $_POST['token']) {
        return false;
    }

    return true;
}
