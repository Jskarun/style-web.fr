<?php session_start();
if($_GET['session'] == 'destroy'){
	session_unset();
	session_destroy();
}
//AFFICHAGE DES ERREURS PHP
//error_reporting(E_ALL);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">


<head>
<title>ADMINISTRATION STYLEOWEB </title>

		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<style type="text/css"> @import url(../style.css);</style>
		<style type="text/css" media="screen">
	
	* {
		font-family: "Verdana";
		font-size: 10px;
	}
	
	input {
		border : 0px;
		background-color: #ecc09c;
		padding:4px;
		font-weight: bold;
	}
	
	#bloc {
		position:relative;
		padding:5px;
		background-color: #eee;
		left:50%;
		margin-left:-250px;
		width:500px;
		margin-bottom: 20px;
	}
	
	#tab-id{
		position:relative;
		left:50%;
		margin-left:-125px;
		width:250px;
	}
	
	a:hover {
		text-decoration: underline;
	}
	
	a {
		text-decoration: none;
	}
	
	.table-stats {
		margin-right:5px;
		margin-bottom:5px;
		width:220px;
		float:left;
	}
	
	.table-stats .top-table{
		background-color:#444;
		color:#FFF;
		font-weight:bold;
		padding:3px;
	}
	
	.links {
		clear:both;
		width:400px;
		margin-top: 10px;
		margin-bottom: 100px;
		position:relative;
		left:50%;
		margin-left: -200px;
		
	}
	
	.links ul {
		list-style-type:none;
		display:table;
		margin:0 auto;
	}
	
	.links li {
 		float:left;
 		text-align: center;
 	}
	
	.links li a {
		font-size: 11px;
		text-align:center;
 		display:block;
 		border: 3px solid #EEE;
 		color:#777;
 		margin:1px;
 		width:100px;
 		text-decoration:none;
 		padding:5px;
 	}
	
	.links li a:hover {
 		color:#000;
 		border: 3px solid #555;
 	}
	
	.links ul li ul {
 		display:none;
 	}
	
	.links ul li:hover ul {
		 display:block;
 	}
	
	.links li:hover ul li {
		float:none;
	}
	.links li ul {
 		position:absolute;
 	}
	
	#add {
		font-size:11px;
	 	width:700px;
	 	position:relative;
	 	left:50%;
	 	margin-left: -350px;
	 	margin-bottom: 30px;
	 }
	 #add td {
	 	border: 1px solid #AAA;
	 	padding:3px;
	  }
	
	#add .bvalid {
		border:0px;
		text-align: center;
	}
	
		</style> 
		
		
		
		
</head>	
	
<body>
	<!-- ENTETE DE PAGE -->
		<div style='background-color:#333;'><a style='display:block;' href="">
			<span id='bloc-titre'>
			</span></a>
		</div>
		
		<div style='text-align:center;font-size:12px;font-weight:bold;height:30px;line-height:30px;'> ADMINISTRATION STYLEOWEB</div>

	<table cellspacing="0" width="100%">
		<tr>
		<td id='coteD'></td>
			<td>
				<div id='main'>
				
 <!-- ***************************************    DEBUT DE CONTENU ADMINISTRATION ********************************************************** -->
<?php

// on se connecte à la base
	include('../inc/connex-base.php');
	$connection = mysql_connect($serveur, $utilisateur , $motdepasse);
	$connection	or die(" Impossible de se connecter au serveur de bases de données. ");
	mysql_select_db($base) or die("Base de données non trouvée : erreur :".mysql_error());

// TEST ET CONDITION CONNEXION
// on vérifie les variables de session

if($_SESSION['login'] == "auth"){
// si session ouverte on affiche le contenu	

	// CHOIX DE RUBRIQUES STATS OU BACKOFFICE
	
	if( !isset($_GET['f']) && $_GET['f'] != 'stats' && $_GET['f'] != 'admin' ){
		include ('menu-admin.php');
	}
	else{
	$inc = $_GET['f'];
	switch ($inc) {
						case 'stats':
    					include ('stats.php');
    					break;
						case 'admin':
   				 		include ('backoffice.php');
    					break;
					}
	
	include ('menu-home.php');
	}
		
////
?>



<?php	
}else{
echo "<div id='bloc'>";
// si session est fermée ou non ouverte ou formulaire rempli, on teste les identifiants
	if ( isset($_GET['form_id']) && $_GET['form_id'] == 'ok'){
		
		// on récupère les données du formulaire
		$login = $_POST['login'];
		$pass = md5($_POST['pass']);
		
		// on test les identifiants
		$requete = "SELECT login,pass,prenom,niveau FROM admin WHERE login='".$login."' LIMIT 1";
		$exreq = mysql_query($requete) or die ("Erreur Sql ! ".$requete);
		$exres = mysql_fetch_array($exreq);
		
		if($exres['pass'] == $pass){
			// si pass correspond on renseigne variable de session
			$_SESSION['login'] = 'auth';
			// on redirige la page pour test de variable session
			echo "Connexion en cours, merci de patienter ...";
			die('<meta http-equiv="Refresh" content="1;URL=index.php">');
		}else{
			echo " !! Identification incorrecte !!<br/><br/><a href='index.php'>Retour</a>";
		}
			
	}else{
	// si formulaire pas rempli, on l'affiche
	?>
	
		<form action='index.php?form_id=ok' method="post">
		<table id='tab-id'>
		<tr>
			<td>Login : </td><td><input type='text' name='login' value=''/></td>
		</tr>
		<tr>
			<td>Password :</td><td><input type='password' name='pass' value=''/></td>
		</tr>
		<tr>	
			<td></td><td><input type='submit' value='Valider'/></td>
		</tr>
		</table>
		</form>
	
	<?php		
	}
echo "</div>";
}
?>
<!-- ***********************************   FIN DE CONTENU ADMIN ********************************************************************************** -->				
				</div>
								
				<div id='footer'> 
	<a href=''>Home</a> • 
	<a href='../main.php?rub=rea'>Références</a> • 
	<a href='../main.php?rub=services'>Services</a> • 
	<a href='../main.php?rub=contact'>Contact</a>  • 
	<img style='position:relative;top:2px;' src='../pics/03.png' alt="S'abonner au flux RSS" border='0' /> 
	<a href='feed://www.jonathan-escaravage.fr/flux.xml'>Flux RSS</a>  •
	<a href="http://validator.w3.org/check?uri=referer" target='_blank'> <img style='position:relative;top:3px;' src="http://www.w3.org/Icons/valid-xhtml10" alt="Valid XHTML 1.0 Transitional" height="15" width="40" /></a> <a href="http://validator.w3.org/check?uri=referer" target='_blank'> W3C Validator</a>  • <img style='position:relative;top:2px;' src="../pics/ico-facebook.jpg" alt="Partager sur facebook" />
	<a onClick="return fbs_click()" target="_blank" href='http://www.facebook.com/share.php?u=www.styleoweb.fr' >Partager</a>   • 
	 <img style='position:relative;top:2px;' src="../pics/ico-twitter.jpg" alt="Actu Tweeter" /> <a href='http://twitter.com/home?status=www.styleoweb.fr' target='_blank'>Twitter</a> 
	|  © Copyright 2010 
</div>			
			</td>
			
		<td id='coteG'></td>
		
		</tr>
	</table>
	</body>
</html>
















