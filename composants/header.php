<?php $page = basename($_SERVER['PHP_SELF']) ?>

<header class="w-full bg-white flex justify-between items-center p-3 shadow">
    <div class="flex items-center">
        <img src="../assets/images/logo.png" alt="logo" width="70px">
        <h2 class="font-black ms-2">TyabDaar</h2>
    </div>
    <nav class="flex items-center gap-4">
        <a href="../views/index.php" class="nav-links <?= $page=='index.php' ? 'bg-primary text-white font-bold' : '' ?>">Accueil</a>
        <a href="" class="nav-links">Plats</a>
        <a href="" class="nav-links">A propos</a>
        <a href="" class="nav-links">Contact</a>
    </nav>
    <div class="compte-btns">
        <a href="#" class="bg-gray-600" onclick="showCompte(event)">S'inscrire</a>
        <a href="../views/form_login.php" class="bg-primary">Connexion</a>
    </div>
</header>

<div class="compte" id="compte">
        <section>
            <div class="box-title">
                <h3>Qui vous êtes ?</h3>
                <svg onclick="hideCompte()" width="30px" height="30px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path opacity="0.5" d="M22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 6.47715 6.47715 2 12 2C17.5228 2 22 6.47715 22 12Z" fill="#1C274C"></path> <path d="M8.96967 8.96967C9.26256 8.67678 9.73744 8.67678 10.0303 8.96967L12 10.9394L13.9697 8.96969C14.2626 8.6768 14.7374 8.6768 15.0303 8.96969C15.3232 9.26258 15.3232 9.73746 15.0303 10.0304L13.0607 12L15.0303 13.9696C15.3232 14.2625 15.3232 14.7374 15.0303 15.0303C14.7374 15.3232 14.2625 15.3232 13.9696 15.0303L12 13.0607L10.0304 15.0303C9.73746 15.3232 9.26258 15.3232 8.96969 15.0303C8.6768 14.7374 8.6768 14.2626 8.96969 13.9697L10.9394 12L8.96967 10.0303C8.67678 9.73744 8.67678 9.26256 8.96967 8.96967Z" fill="#1C274C"></path> </g></svg>
            </div>
            <div class="type-user mt-2">
                <a href="">
                    <img src="../assets/images/chef.png" width="124px"/>
                    <span>Cuisiniére</span>
                </a>
                <a href="./form_client.php">
                    <img src="../assets/images/client.png" />
                    <span>Client</span>
                </a>
            </div>
        </section>
    </div>

<script src="../assets/js/tyabdaar.js"></script>