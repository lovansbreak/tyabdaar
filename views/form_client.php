<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Créer un compte client</title>
    <link rel="stylesheet" href="../assets/css/output.css">
</head>
<body>
    <?php include('../composants/header.php'); ?>
    <section class="p-6 flex flex-col items-center ">
        <h1 class="text-2xl mb-2 text-primary font-black ">Compte client</h1>

        <form action="../controllers/clientController.php" method="POST" class="inline-flex flex-col gap-4 p-5 bg-gray-200 rounded-lg">
            <input type="text" name="nom_complet" class="input-text" placeholder="Nom complet">
            <div class="flex gap-3">
                <input type="email" class="input-text" name="email" placeholder="E-mail">
                <input type="tel" class="input-text" name="tel" placeholder="Téléphone">
            </div>
            <div class="flex gap-3">
                <input type="text" class="input-text" name="adresse" placeholder="Adresse">
                <select name="ville" class="input-text grow">
                    <option value="Béni Mellel">Béni Mellel</option>
                    <option value="Ksiba">Ksiba</option>
                    <option value="Afourar">Afourar</option>
                    <option value="Tadla">Tadla</option>
                    <option value="Fakih ben Salah">Fakih ben Salah</option>
                    <option value="Souk Sabt">Souk Sabt</option>
                </select>
            </div>
            <div class="flex gap-3">
                <input type="password" class="input-text" name="pwd" placeholder="Mot de passe">
                <input type="password" class="input-text" name="pwd_c" placeholder="Confirmez le mot de passe">
            </div>
            <input type="submit" value="Créer le compte" class="primary-btn">
        </form>
        <?php 
           /* if(isset($_GET['action'})){
                echo ""
            }*/
        ?>
    </section>
</body>
</html>