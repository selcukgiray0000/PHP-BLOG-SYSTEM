<?php
// cannot access the page if there is no session
require_once "../manager.php";

if($authority == "User")
{
    header("Location: ../index.php");
}

if(!isset($_SESSION["email"]))
{
    header("Location: ../index.php");
}

if($_POST)
{
    $edittitle = $_POST["edittitle"];
    $edittext = $_POST["edittext"];
    $titlenumber = strlen($edittitle);
    $url = 'http://'.$_SERVER['SERVER_NAME'].$_SERVER['REQUEST_URI'];
    if($titlenumber > 80)
    {
        $errormsg = "Title is too long.";
    }
    else
    {
        $query = $db->prepare("UPDATE blog SET blogtitle=?, blogtext=? WHERE blogid=?");
        $update = $query->execute(array($edittitle, $edittext, $info["blogid"]));
        if($update)
        {
            $errormsg = "Updated.";
            header("Refresh: 1; url=$url");
        }
        else
        {
            $errormsg = "Could not update.";
        }
    } 
}
?>


<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Edit Blog</title>
  </head>
  <body>
    <?php include "../navbar.php"?>
    <div class="container-fluid mt-3">
        <div class="row">
            <div class="col-md-8">
                <form method="POST">
                    <input type="text" class="form-control" name="edittitle" value="<?php echo $info["blogtitle"]?>">
                    <textarea class="form-control mt-1" name="edittext" cols="30" rows="60"><?php echo $info["blogtext"]?></textarea>
               
            </div>
            <div class="col-md-4">
                <button type="submit" class="btn btn-warning">Update</button>
                <?php
                if(!empty($errormsg))
                {
                    ?>
                    <div class="alert alert-success mt-1" role="alert">
                    <?php echo $errormsg;?>
                    </div>
                    <?php
                }
                ?>
            </div>
            </form>
        </div>
    </div>
  </body>
</html>
