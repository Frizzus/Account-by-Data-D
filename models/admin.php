<?php
    if (empty($_POST)) {
        header("Location: ../views/fr/admin_connection.php");
        die();
    }
    else {
        header("Location: ../views/fr/profile_admin.php");
        die();
    }
?>