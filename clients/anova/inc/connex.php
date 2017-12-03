<?php
	$serveur ="db3068.1and1.fr";
	$utilisateur = "dbo357683368"; 
	$motdepasse = "anova2011";
	$base = "db357683368";
	
	// CONNEXION A LA BDD 1&1
	$connection = mysql_connect($serveur, $utilisateur , $motdepasse);
	$connection	or die("Impossible de se connecter au serveur de bases de données.");
	mysql_select_db($base) or die("Base de données non trouvée : erreur :".mysql_error());
?>