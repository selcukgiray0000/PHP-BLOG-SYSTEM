<?php
require_once "../manager.php";

if($authority == "User")
{
    header("Location: ../index.php");
}

if(!isset($_SESSION["email"]))
{
    header("Location: ../index.php");
}

if($_GET)
{
    $blogid = intval($_GET["blogid"]);
    $query = $db->prepare("DELETE FROM blog WHERE blogid=?");
    $query->execute(array($_GET["blogid"]));
    header("Location: ../index.php");
}
?>