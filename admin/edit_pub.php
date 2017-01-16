<!DOCTYPE html>
<html>
<?php include('header.php'); ?>
<?php  include('session.php'); ?>
<body class="hold-transition skin-red sidebar-mini">
<div class="wrapper">

    <?php include('top.php'); ?>
    <!-- Left side column. contains the logo and sidebar -->

    <?php include('sidebar.php'); ?>
    <?php $get_id = $_GET['id']; ?>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                DASHBOARD | ADMIN PANEL
                <small>Version 1.0</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                <li class="active">Dashboard</li>
            </ol>
        </section>

        <!-- Main content -->
        <!--todo add editable heading-->
        <section class="content">

            <div class="row">
                <div class="col-md-2">


                </div>
                <div class="col-md-8">
                    <div class="box box-info">

                        <div class="box-header with-border">
                            <h3 class="box-title">Edit Publication</h3>
                        </div>
                        <!-- /.box-header -->
                        <!-- form start -->
                        <form  method="post" enctype="multipart/form-data">
                            <div class="box-body">
                                <?php
                                $query = $conn->query("select * from downloads where id='$get_id'");
                                while ($row = $query->fetch()) {

                                ?>
                                <div class="form-group col-sm-10">
                                    <label>Heading:</label>

                                    <div class="input-group  col-sm-8">

                                        <input type="text" name="name" class="form-control" id="event" placeholder="Publication Heading" value="<?php echo $row['name']; ?>" required>
                                    </div>

                                </div>
                                <div class="form-group col-sm-10">
                                    <label>Sub heading:</label>

                                    <div class="input-group  col-sm-8">

                                        <input type="text" name="sub" class="form-control" id="venue" placeholder="Publication Heading" value="<?php echo $row['sub']; ?>" required>
                                    </div>

                                </div>
                                <div class="form-group col-sm-10">
                                    <label>Publication Description:</label>
                                    <div class="input-group  col-sm-8">
                                        <textarea rows="4" cols="50" name="descp" placeholder="Publication Description" required><?php echo $row['des']; ?> </textarea>

                                    </div>
                                </div>
                                    <div class="form-group col-sm-10">
                                        <label >Publication Link:</label>

                                        <div class="input-group  col-sm-8 input-sm">
                                            <input type="text" name="img" class="form-control" id="desc" placeholder="Type of quote" value="<?php echo $row['link']; ?>"  disabled>
                                        </div>
                                    </div>

                                <div class="form-group col-sm-10">
                                    <label>Upload Publication:</label>
                                    <div class="col-sm-10 input-sm">
                                        <input name="image" class="input-file uniform_on" id="fileInput" type="file" required>
                                    </div>

                                </div>




                                <!-- /.input group -->
                                <?php }?>

                            </div>
                            <!-- /.box-body -->
                            <div class="box-footer">
                                <button  name="save" class="btn btn-info">Save changes</button>
                            </div>
                            <!-- /.box-footer -->
                        </form>
                    </div>
                <div class="col-md-2">


                </div>
            </div>
            <!--third row-->



        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <!-- Main Footer -->
    <?php include('footer.php'); ?>

    <!-- Control Sidebar -->

    <div class="control-sidebar-bg"></div>

</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<?php include('hscripts.php'); ?>


<script type="text/javascript">
    $("#read").click(function() {

        $("#hidden").show();
        $("#read").hide();

    });

</script>
</body>
</html>

<?php
include('dbcon.php');
if (isset($_POST['save'])){
    $name = $_POST['name'];
    $sub = $_POST['sub'];
    $descp = $_POST['descp'];


    $image = addslashes(file_get_contents($_FILES['image']['tmp_name']));
    $image_name = addslashes($_FILES['image']['name']);
    $image_size = getimagesize($_FILES['image']['tmp_name']);

    move_uploaded_file($_FILES["image"]["tmp_name"], "../downloads/" . $_FILES["image"]["name"]);
    $location = "http://localhost/umande/downloads/" . $_FILES["image"]["name"];

    $conn->query("update downloads set name='$name' , sub='$sub', des='$descp' ,link ='$location' where id = '$get_id' ")or die(mysql_error());


    ?>
    <script>
        window.location = "addpub.php";
    </script>
    <?php

}
?>
