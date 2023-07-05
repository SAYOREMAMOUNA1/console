<?php
session_start();
$con = mysqli_connect("localhost", "root", "", "consolidation");

if (isset($_POST['login'])) {
    $email = $_POST['email']; 
    $mot_de_passe = $_POST['pass'];
    $query = "SELECT * FROM `verification` WHERE `email`='$email'";
    $select = mysqli_query($con, $query);
    $row = mysqli_fetch_array($select);

    if (is_array($row)) {
        $hashed_password = $row["mot_de_passe"];
        if (password_verify($mot_de_passe, $hashed_password)) {
            $_SESSION["nom"] = $row["nom"];
            $_SESSION["prenom"] = $row["prenom"];
            $_SESSION["email"] = $row["email"];
            header("Location: acceuil.php");
            exit();
        } else {
            echo '<script> alert("Mot de passe et/ou email invalide")</script>';
            echo '<script> window.location.href="connexion.php"</script>';
        }
    } else {
        echo '<script> alert("Mot de passe et/ou email invalide")</script>';
        echo '<script> window.location.href="connexion.php"</script>';
    }
}
?>
