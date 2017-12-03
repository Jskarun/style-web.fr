<?php ?> 

<div id='bloc-contact'>
	<div id='tab-contact'>
		<form name='formcont' action="content.php?pg=contact&amp;field=ok" method="post">
		<table>
			<tr>
				<td><input class='input-text' type='text' name='nom' value='' /> </td> <td class='intersec'> </td> <td><input class='input-text' type='text' name='prenom' value='' /></td>
			</tr>
			<tr>
				<td><input class='input-text' type='text' name='societe' value='' /> </td> <td class='intersec'> </td> <td><input class='input-text' type='text' name='ville' value='' /></td>
			</tr>
			<tr>
				<td><input class='input-text' type='text' name='mail' value='' /> </td> <td class='intersec'> </td> <td><input class='input-text' type='text' name='tel' value='' /></td>
			</tr>
			<tr>
				<td></td><td colspan='2' style='text-align:left;padding-top:3px;' ><input  type='radio' name='lang-cv' value='cvfr'/> Francais </span><input type='radio' name='lang-cv' value='cven'/> Anglais</td>
			</tr>
			<tr>
				<td colspan='3'><textarea name='message'></textarea></td>
			</tr>
		</table>
			<input type='submit' class='submit1' value='' onclick="validForm('nom','','R','prenom','','R','societe','','R','mail','','RisEmail','tel','','','tel','','R','message','','R');return document.MM_returnValue"/>	
		</form>
	</div>
	<br/><br/><br/><br/>
	<?php
		if ( isset($_GET['field']) && $_GET['field']=='ok' && $_POST['mail'] !="" ) {
		
			// si tous les champs remplis on fait l'envoi mail
			$nom = $_POST['nom'];
			$prenom = $_POST['prenom'];
			$societe = $_POST['societe'];
			$ville = $_POST['ville'];
			$mail = $_POST['mail'];
			$tel = $_POST['tel'];
			$message = $_POST['message'];
			$lang = $_POST['lang-cv'];
			
			if($lang == 'cvfr')$lang = 'française';
			if($lang == 'cven')$lang = 'anglaise';
			
			//on transforme les sauts de ligne de la textarea pour les récupérer dans le mail
			$message = ereg_replace("\n", "<br/>", $message);
	
			// Préparation de l'entete pour l'envoi mail
			$typecontact = 'Contact [ AmandineNova.fr ] '.strtoupper($nom)." ".strtoupper($prenom);
			$from = $mail;
			$to = 'contact@amandinenova.fr';
			
			$webm = 'j.escaravage@styleoweb.fr';
			$reply = $mail;
			$contenu = "<html><body><img src='http://www.amandinenova.fr/images/entete.jpg' alt='Amandine Nova'/><br/><u>".ucfirst($prenom)." ".ucfirst($nom)."</u> de la société <b>".$societe."</b> vous a contacté via <a href='http://www.amandinenova.fr'><b>AmandineNova.fr</b></a><br/>Voici son message :<br/><br/><span style='padding:5px;display:block;border-style:solid;border-width:1px;border-color:#eee;color:#448888;'> ".stripslashes($message)."</span><br/>Demande de CV : <b>Version ".$lang."</b><br/>Telephone du contact : ".$tel;
	
			if( !(empty($ville)) ){
				$contenu = $contenu."<br/>Ville du contact : ".$ville."</body></html>";
			}else{
				$contenu = $contenu."</body></html>";
			}
			
			include('inc/fonc_mail.php');
			
			// Envoi du mail
			//copie mail dev
			mail_to( $webm, $from, $typecontact, $reply, $contenu);
			$ans = mail_to( $to, $from, $typecontact, $reply, $contenu);
			if ($ans == true) 
				echo "<p class='info-message'> Votre mail a bien été envoyé. <br/> </p> ";
			else
				echo "<p class='info-message'>Une erreur est survenue à l'envoi du mail. Veuillez recommencer ultérieurement.</p>";
		
		}
	?>
	
</div>


