<?php
require_once "manager.php";
?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
    <?php include "navbar.php"?>
    <div class="container mt-3">
      <div class="row">
      <div class="col-md-8 mx-auto">
        <?php
          foreach($bloginfo as $blog)
          {
            $numberofcharacters = strlen($blog["blogtext"]);
            ?>
            
              <div class="card mt-1">
              <div class="card-body">
                <a href="blog/blog.php?blogid=<?php echo $blog["blogid"];?>"><h5 class="card-title text-dark"><?php echo $blog["blogtitle"]?></h5></a>
                <?php
                 if($numberofcharacters > 200)
                 {
                      echo substr($blog["blogtext"],0,350) ."...";
                    ?>
                    <form method="get">
                      <a href="blog/blog.php?blogid=<?php echo $blog["blogid"];?>">Read more</a>
                    </form>
                    <?php
                 }
                 else
                 {
                  ?>
                    <p class="card-text"><?php echo $blog["blogtext"]?></p>
                  <?php
                 }
                ?>
              </div>
              <div class="card-footer">
                Submitted by: <a class="text-secondary "><?php echo $blog["user"]?></a>
                Add Date: <a class="text-secondary "><?php echo $blog["time"]?></a>
              </div>
              </div>
            <?php
          }
        ?>
      </div>
      </div>
    </div>
</body>
</html>