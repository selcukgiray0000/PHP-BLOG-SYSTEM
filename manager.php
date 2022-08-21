<?php
error_reporting(0);
ob_start();
session_start();
try
{
    $db = new PDO("mysql:host=localhost;dbname=blog;charset=utf8;", "root", "");
}
catch(PDOException $dberror)
{
    echo $dberror->getMessage();
}

//We pulled the logged in user's data from the database
if(isset($_SESSION["email"]))
{
    $query = $db->prepare("SELECT * FROM users WHERE email=?");
    $query->execute(array($_SESSION["email"]));
    $usernumber = $query->rowCount();
    $usersinfo = $query->fetch(PDO::FETCH_ASSOC);
    if($usernumber > 0)
    {
        $username = $usersinfo["username"];
        $email = $usersinfo["email"];
        $registerdate = $usersinfo["registerdate"];
        $authority = $usersinfo["authority"];
    }
}

// we pull data of blog posts from database
$query = $db->prepare("SELECT * FROM blog order by blogid desc");
$query->execute();
$blognumber = $query->rowCount();
$bloginfo = $query->fetchAll(PDO::FETCH_ASSOC);

if($_GET)
{
    $blogid = intval($_GET["blogid"]);
    $query = $db->prepare("SELECT * FROM blog WHERE blogid=?");
    $query->execute(array($_GET["blogid"]));
    $info = $query->fetch(PDO::FETCH_ASSOC);
}

?>













<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>