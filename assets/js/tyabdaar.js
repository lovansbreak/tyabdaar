
function showCompte(e){
    e.preventDefault() // pour ne pas recharger la page
    document.getElementById('compte').style.display = "flex"
}

function hideCompte(){
    document.getElementById('compte').style.display = "none"
}