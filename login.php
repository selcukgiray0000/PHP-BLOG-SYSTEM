<?php
require_once "manager.php";

if($_POST)
{
    //post
    $email = $_POST["email"];
    $password = md5($_POST["password"]);
    
    if($email!="" && $password!="")
    {
        $query = $db->prepare("SELECT * FROM users WHERE email=? and password=?");
        $query->execute(array($email, $password));
        $login = $query->rowCount();
        if($login > 0)
        {
            $errormsg = "Login successful :)";
            $_SESSION["email"] = $email;
            header("Refresh: 2; url=index.php");
        }
        else
        {
            $errormsg = "Login failed :(";
        }
    }
    else
    {
        $errormsg = "Do not leave empty space!";
    }
}
?>



<?php
//session control
if(isset($_SESSION["email"]))
{
    ?>
     <?php include "navbar.php"?>
    <?php
    echo "You are already logged in";
}
else
{
    ?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Login Page</title>
  </head>
  <body>
    <!-- NAVBAR -->
    <?php include "navbar.php"?>
    <div class="container mt-3">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="alert bg-warning" role="alert">
                Login Form
                </div>
                <form method="post">  
                <input type="text" class="form-control mt-1" name="email" placeholder="Email">
                <input type="text" class="form-control mt-1" name="password" placeholder="Password">
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
                <a href="register.php">Don't have an account yet? </a><br>
                <button type="submit" class="btn btn-warning mt-1">Login</button>   
                </form>  
            </div>
        </div>
    </div>
  </body>
</html>
    <?php
}

?>
