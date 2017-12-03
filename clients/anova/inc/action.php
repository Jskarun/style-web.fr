<?php ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<head></head>

<body style='margin:0px;'>
<div style="margin:0px;background-color:#555;color:#FFF;font-size:14px;text-align:center;padding:40px;height:50px;font-family:'Trebuchet MS';line-height:19px;">
<?php
	
	// Demande d'accès acceptée
	if( isset($_GET['w']) && $_GET['w']=='accept' )
	{
		$idvalid = $_GET['id'];
		
		// Connexion BDD
		include ('connex.php');
		
		// On récupère nom, prenom de la base
		$sql = "SELECT nom,prenom,valid, email FROM an_users WHERE id='".$idvalid."'";
		$ex = mysql_query($sql) or die ("Erreur Sql ! ".$sql);
		$res = mysql_fetch_array($ex);
		if (!empty($res)){
			if ( $res['valid'] != '1'){
				$nom_temp = $res['nom'];
				$prenom_temp = $res['prenom'];
				$mail_temp = $res['email'];
				
				// Génération du login et mot de passe
				$login = substr($nom_temp, 0, 3).substr($prenom_temp, 0, 3);
	 			$login = strtolower($login);
	  			
	  			$tabletterpass = array('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t');
	  			$pass1 = $tabletterpass[rand(0,19)].$tabletterpass[rand(0,19)].$tabletterpass[rand(0,19)];
	  			$tabnumberpass = array('0','1','2','3','4','5','6','7','8','9');
	  			$pass2 = $tabnumberpass[rand(0,9)].$tabnumberpass[rand(0,9)].$tabnumberpass[rand(0,9)];
				$pass = $pass1.$pass2;
				
				$md5pass = md5($pass);
				
				// Mise à jour des infos dans la bdd
				$up_user =" UPDATE an_users SET
		  
			  	valid ='1',
			  	send_mail ='0',
			  	login ='".$login."',
			  	pass ='".$md5pass."'
			  	
			  	WHERE id=".$idvalid;
				
				// execute la requête
				$ex_up_user = mysql_query($up_user) or die ("Erreur SQL ! :". $up_user);
				
				
				// Envoi du mail contenant les identifiants et les informations
				include ('fonc_mail.php');
				
				// Préparation de l'entete pour l'envoi mail
				$typecontact = "[ AmandineNova.fr ] Votre demande d'accès à la partie privée";
				$from = "contact@amandinenova.fr";
				$to = $mail_temp;
				$reply = "noreply@amandinenova.fr";
				$contenu = "<html><body><img src='http://www.styleoweb.fr/clients/a.nova/images/entete.jpg' alt='Amandine Nova'/><br/>Bonjour, <b>".ucfirst($prenom_temp)." ".ucfirst($nom_temp)."</b> <br/> Votre demande d'accès à la partie privée du site <a href='http://www.amandinenova.fr'>amandinenova.fr</a> vient d'être acceptée.<br/><br/>Voici vos identifiants : <br/><i>Utilisateur :</i><b> ".$login."</b><br/><i>Mot de passe :</i><b> ".$pass."</b><br/>Merci de conserver ce mail, afin de ne pas perdre vos identifiants !<br/><br/>Vous pouvez désormais vous connecter au site <a href='http://www.amandinenova.fr'>www.amandinenova.fr</a> et accéder à la partie privée du site.<br/>A bientôt !</body></html>";
					
				// Envoi du mail
				$ans = mail_to( $to, $from, $typecontact, $reply, $contenu);
				if ($ans == true) 
					// Messsage 
					echo "» La demande d'inscription de <b>".$nom_temp." ".$prenom_temp."</b> a été acceptée. Le demandeur en a été informé.<br/>[X] Veuillez fermer cette fenêtre";
				else
					echo "» Une erreur est survenue à l'envoi des identifiants. <br/> Veuillez recommencer ultérieurement.";
				
			}else {
				echo "» Cette demande d'inscription a déjà été validée. [X] Veuillez fermer cette fenêtre";
			}
		}else{
			echo "» Cette demande d'inscription n'existe plus. [X] Veuillez fermer cette fenêtre";
		}
	}	
	else if ( isset($_GET['w']) && $_GET['w']=='refus' ){
		
		$idrefus = $_GET['id'];
		
		// Connexion BDD
		include ('connex.php');
		
		// On récupère nom, prenom de la base
		$sql = "SELECT nom, prenom, send_mail FROM an_users WHERE id='".$idrefus."'";
		$ex = mysql_query($sql) or die ("Erreur Sql ! ".$sql);
		$res = mysql_fetch_array($ex);
		
		if (!empty($res)){
			if ( $res['send_mail'] != '1'){
				
				$nom_temp = $res['nom'];
				$prenom_temp = $res['prenom'];
				$mail_temp = $res['email'];
				
				// Mise à jour des infos dans la bdd ( on remet la validation à 0 ainsi que les identifiants, pour cas ou déja acceptée par erreur )
				$up_user_r =" UPDATE an_users SET
		  
			  	send_mail ='1',
			  	valid = '0',
			  	login ='',
			  	pass =''
			  	
			  	WHERE id=".$idrefus;
				
				// execute la requête
				$ex_up_user = mysql_query($up_user_r) or die ("Erreur SQL ! :". $up_user_r);
				
				// Envoi du mail d'info de refus
				include ('fonc_mail.php');
				
				// Préparation de l'entete pour l'envoi mail
				$typecontact = "[ AmandineNova.fr ] Votre demande d'accès à la partie privée";
				$from = "contact@amandinenova.fr";
				$to = $mail_temp;
				$reply = "noreply@amandinenova.fr";
				$contenu = "<html><body>Bonjour, <b>".ucfirst($prenom_temp)." ".ucfirst($nom_temp)."</b> <br/> Nous sommes au regret de vous informer que votre demande d'accès à la partie privée du site <a href='http://www.amandinenova.fr'>amandinenova.fr</a> n'a pas été acceptée. Les informations fournies ne nous permettent pas de valider celle-ci.<br/><br/>Merci de votre compréhension.</body></html>";
					
				// Envoi du mail
				$ans = mail_to( $to, $from, $typecontact, $reply, $contenu);
				if ($ans == true) 
					// Messsage 
					echo "» La demande d'inscription de <b>".$nom_temp." ".$prenom_temp."</b> vient d'être refusée. Le demandeur en a été informé.<br/><u>Attention !</u> Si la demande a été précédemment acceptée, l'accès sera supprimé pour le demandeur.<br/> [X] Veuillez fermer cette fenêtre";
				else
					echo "» Une erreur est survenue à l'envoi du mail au demandeur. <br/> [X] Veuillez recommencer ultérieurement.";
			}else
				echo "» Cette demande a déjà été refusée.  [X] Veuillez fermer cette fenêtre";		
		}else
			echo "» Cette demande d'inscription n'existe plus.  [X] Veuillez fermer cette fenêtre";		
	}	
	
?>
</div>


</body>
</html>

