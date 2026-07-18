<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../assets/css/output.css">
    <title>TyabDaar</title>
</head>
<body>
    <?php include('../composants/header.php');  ?>
    <section class="p-6 flex justify-center">
        <form action="" class="bg-gray-100 border-b-4 border-gray-500 p-4 rounded-lg flex gap-3">
            <input type="text" size="30" class="bg-white rounded p-2 outline-0" placeholder="Rechercher un plat ou une cuisiniére...">
            <select class="bg-white p-2 rounded outline-0">
                <option value="">Plat</option>
                <option value="">Cuisiniére</option>
            </select>
            <input type="submit" value="Rechercher" class="rounded bg-gray-600 px-4 text-white cursor-pointer hover:scale-95 duration-150">
        </form>
    </section>
</body>
</html>