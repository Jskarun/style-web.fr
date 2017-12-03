<?php

//connexion base
include('inc/connex-base.php');
$connection = mysql_connect($serveur, $utilisateur , $motdepasse);
$connection	or die(" Impossible de se connecter au serveur de bases de donnŽes. ");
mysql_select_db($base) or die("Base de donnŽes non trouvŽe : erreur :".mysql_error());

function getIp()   
{
    if ( isset($_SERVER['HTTP_X_FORWARDED_FOR']) )
		$ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
    else
       	$ip = $_SERVER['REMOTE_ADDR'];
           
    return $ip;
}


// on rŽcupre les infos
$ip = getIp();   
$date = date('Y').'/'.date('m') .'/'.date('d');

// on teste l'existence de l'ip ˆ cette date (annule l'insertion si oui)
$rech_ip = "SELECT * FROM stats WHERE ip='".$ip."' AND date='".$date."'";
$ex_rech_ip = mysql_query($rech_ip) or die('Erreur SQL : '.$rech_ip);
$tab_rechip = mysql_fetch_array($ex_rech_ip);
if( empty($tab_rechip) ){
	// si pas de rŽsultats on les insre dans la bdd
	$add_ip = "INSERT INTO stats (ip,date) VALUES ('$ip','$date')";
	$add_ip_ex = mysql_query($add_ip);
}
?>