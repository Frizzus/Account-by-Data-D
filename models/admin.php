<?php
    if ($_SERVER["REQUEST_METHOD"] === "POST") {
        header("Location: ../views/fr/profile_admin.php");
        die();
    }
    else{
        header("Location: ../views/fr/admin_connection.php");
        die();
    }
?>