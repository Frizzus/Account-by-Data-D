<?php
    if ($_SERVER["REQUEST_METHOD"] === "POST") {
        header("Location: ../views/fr/profile.php");
        die();
    }
    else {
        header("Location: ../views/fr/connection.php");
        die();
    }
?>