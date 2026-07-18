<?php
    $nom_complet = $_POST['nom_complet'];
    $email       = $_POST['email'];
    $tel         = $_POST['tel'];
    $adresse     = $_POST['adresse'];
    $ville       = $_POST['ville'];
    $pwd         = $_POST['pwd'];
    $pwd_c       = $_POST['pwd_c'];

    require('../db/connect.php');

    $pwd_hash = password_hash($pwd, PASSWORD_BCRYPT);

    $sql = "INSERT INTO users (nom_complet,email,tel, adresse, ville, pwd) VALUES('$nom_complet','$tel')";

    mysqli_query($cnx,$sql);

    header("location:../views/form_client.php?action=true");
?>