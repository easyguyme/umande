<?php $get_id = $_GET['id']; ?>

<div class="box box-info">

    <div class="box-header with-border">
        <h3 class="box-title">Edit Planned Project</h3>
    </div>
    <!-- /.box-header -->
    <!-- form start -->
    <form  method="post">
        <?php
        $query = $conn->query("select * from planned where id='$get_id'");
        while ($row = $query->fetch()) {

            ?>
            <div class="box-body">
                <div class="form-group col-sm-10">
                    <label>Project name:</label>

                    <div class="input-group  col-sm-8">

                        <input type="text" name="name" class="form-control"  placeholder="Project name" value="<?php echo $row['name']; ?>" required>
                    </div>

                </div>

                <div class="form-group col-sm-10">
                    <label>Project Description:</label>

                    <div class="input-group  col-sm-8">

                        <input type="text" name="des" class="form-control"  placeholder="Project Description" value="<?php echo $row['des']; ?>" required>
                    </div>

                </div>
                <div class="form-group col-sm-10">
                    <label>Project Budget (Ksh.) :</label>

                    <div class="input-group  col-sm-8">

                        <input type="text" name="per" class="form-control"  placeholder="Project Completion percentage" value="<?php echo $row['budget']; ?> " required>
                    </div>

                </div>
                <!-- /.input group -->


            </div>
            <!-- /.box-body -->
            <div class="box-footer">
                <button  name="update" class="btn btn-info">Update changes</button>
            </div>
        <?php } ?>
    </form>
</div>

<?php
include('dbcon.php');
if (isset($_POST['update'])){
    $name = $_POST['name'];
    $des = $_POST['des'];
    $per = $_POST['per'];



    $conn->query("update planned set name = '$name', des='$des' ,budget='$per'  where id = '$get_id' ")or die(mysql_error());


    ?>
    <script>
        window.location = "edituppro.php<?php echo '?id='.$get_id; ?>";
    </script>
    <?php

}
?>
