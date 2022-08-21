<?php
require_once "manager.php";

if($_POST)
{
    // POST 
    $username = $_POST["username"];
    $email = $_POST["email"];
    $password = md5($_POST["password"]);

    if($username!="" && $email!="" && $password!="")
    {
        $query = $db->prepare("SELECT * FROM users WHERE email=?");
        $query->execute(array($email));
        $emailcontrol = $query->rowCount();
        if($emailcontrol > 0)
        {
            $errormsg = "This email address is being used by another user!";
        }
        else
        {
            if(filter_var($email,  FILTER_VALIDATE_EMAIL))
            {
                $query = $db->prepare("INSERT INTO users SET email=?, username=?, password=?, registerdate=?");
                $add = $query->execute(array($email, $username, $password, date("Y-m-d")));
                if($add)
                {
                    $errormsg = "Account created :)";
                }
                else
                {
                    $errormsg = "Account not created :(";
                }
            }
            else
            {
                $errormsg = "Enter a valid email address!";
            }
        }
    }
    else
    {
        $errormsg = "Do not leave empty space!";
    }
}
?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Register Page</title>
  </head>
  <body>
    <!-- NAVBAR -->
   <?php include "navbar.php"?>
    <div class="container mt-3">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="alert bg-warning" role="alert">
                Register Form
                </div>
                <form method="post">
                <input type="text" class="form-control" name="username" placeholder="Username">    
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
                <a href="login.php">Already have an account?</a><br>
                <button type="submit" class="btn btn-warning mt-1">Register</button>   
                </form>  
            </div>
        </div>
    </div>
  </body>
</html>