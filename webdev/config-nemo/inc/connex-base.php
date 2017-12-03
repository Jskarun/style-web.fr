<?php
	$serveur ='db2597.1and1.fr';
	$utilisateur = 'dbo335675583'; 
	$motdepasse = 'nausicaa';
	$base = 'db335675583';
	
	// CONNEXION A LA BDD 1&1
	$connection = mysql_connect($serveur, $utilisateur , $motdepasse);
	$connection	or die("Impossible de se connecter au serveur de bases de donnŽes.");
	mysql_select_db($base) or die("Base de donnŽes non trouvŽe : erreur :".mysql_error());
?>