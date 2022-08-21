<?php
session_start();
session_destroy();
echo "session is being terminated...";
header("Refresh: 2; url=index.php");
?>