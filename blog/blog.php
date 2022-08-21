<?php
//error_reporting(0);
require_once "../manager.php";
?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title><?php echo $info["blogtitle"];?></title>
  </head>
  <body>
    <?php include "../navbar.php";?>
    <div class="container">
        <div class="row">
            <div class="col-md-1-12 mx-auto">
            <div class="card text-center">
            <div class="card-body">
                <h5 class="card-title"><?php echo $info["blogtitle"];?></h5>
                <p class="card-text  text-break"><?php echo $info["blogtext"];?></p>
                <?php
                if($authority == "Admin")
                {
                    ?>
                    <a href="editblog.php?blogid=<?php echo $info["blogid"];?>">Edit</a>
                    <a href="deleteblog.php?blogid=<?php echo $info["blogid"];?>">Delete</a>
                    <?php
                }
                ?>
            </div>
            </div>
            </div>
        </div>
    </div>
  </body>
</html>