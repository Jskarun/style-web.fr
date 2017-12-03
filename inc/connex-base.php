<?php
	$serveur ='localhost';
	$utilisateur = 'root';
	$motdepasse = 'nausicaa2544';
	$base = 'db335675583';

	// CONNEXION A LA BDD 1&1
	$connection = mysql_connect($serveur, $utilisateur , $motdepasse);
	$connection	or die("Impossible de se connecter au serveur de bases de donn�es.");
	mysql_select_db($base) or die("Base de donn�es non trouv�e : erreur :".mysql_error());
?>
