<?php
    if (empty($_POST)) {
        var_dump($_POST);
        header("Location: ../views/fr/connection.php");
        die();
    }
    else {
        var_dump($_POST);
        header("Location: ../views/fr/profile.php");
        die();
    }
?>