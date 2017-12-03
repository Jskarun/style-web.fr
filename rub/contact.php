<?php 
// mise en forme des travaux 
?>
	<span class='t1'>Contactez moi</span> 
	
	<div class='text-intro'> <p class='text-pres'>Vous avez un projet de site web ou tout simplement une demande à propos de mon travail ?<br/>Utilisez le formulaire ci-contre et je vous répondrai dès que possible !</p> <p style='color:#444;'> <b>ESCARAVAGE Jonathan</b><br/>48, Le Frambourg<br/>25300 La Cluse et Mijoux<br/>Siret : 52512616500014</p></div>
	
<div class='cont-rub'>	
	
<?php 
error_reporting(E_ALL);
if(isset($_POST['form']) && $_POST['form']=='ok'){
	if( isset($_POST['resultat']) && $_POST['resultat'] == '5'){
	
		
		//traitement des informations et envoi mail
		// recupération des informations 
		$mail = $_POST['mail'];
		$nom = 	$_POST['nom'];
		$tel = 	$_POST['tel'];
		$message = $_POST['message'];

		//on transforme les sauts de ligne de la textarea pour les récupérer dans le mail
		$message = str_replace("\n", "<br/>", $message);

		// Préparation de l'entete pour l'envoi mail
		$typecontact = 'Contact [ Portfolio ] '.strtoupper($nom);
		$from = $mail;
		$to = 'j.escaravage@styleoweb.fr';
		//$to = 'skarun@free.fr';
		$reply = $mail;
		$contenu = "<html><body>".ucfirst($nom)." vous a contacté via <a href='http://www.styleoweb.fr'><b>StyleOWeb.fr</b></a><br/>Voici son message :<br/><br/><span style='padding:5px;display:block;border-style:solid;border-width:1px;border-color:#eee;color:#448888;'> ".stripslashes($message)."</span><br/><br/>Telephone du contact : ".$tel."</body></html>";

		include('inc/fonc_mail.php');
		// Envoi du mail
		$ans = mail_to( $to, $from, $typecontact, $reply, $contenu,0 );
		
		if ($ans == true) 
			echo " <br/><p>".$pucem." Votre mail a bien été envoyé. <br/> <a href='webmaster-integrateur-pontarlier.php'>Retour à l'accueil</a></p> ";
		else
			echo " <br/><p class='erreur'>".$pucem." (".$to.") : Une erreur est survenue à l'envoi du mail. Veuillez recommencer ultérieurement.<br/>Merci de votre compréhension.</p>";
		}else
			echo " <br/><p class='erreur'>".$pucem." Le résultat 'Anti-Spam' est faux. Veuillez recommencer ultérieurement.<br/>Merci de votre compréhension.</p>";
	
}else{

?>	
	
	<form method="post" action="contact.php">
	<table cellspacing= '5' class='form'>
	
	<tr>
		<td class='intit'> Nom :</td> <td> <input id='nom' type='text' name='nom' value='' size='30' /> </td>
	
	</tr>
	<tr>
		<td class='intit'> Mail : </td> <td><input id='mail' type='text' name='mail' value='' size='35'/> </td>
	
	</tr>
	<tr>
		<td class='intit'> Tel :</td> <td> <input id='tel' type='text' name='tel' value=''/> </td>
	
	</tr>
	<tr>
		<td valign='top' class='intit'> Message :</td> <td> <textarea cols="60" rows="12" id='message' name='message'></textarea> </td>
	
	</tr>
	<tr>
		<td class='intit'> [Anti-spam] Quel est le résultat de 2+3 ?  </td> <td> <input type='text' id='resultat' name='resultat' value='' size='3'/>  </td>
	
	</tr>
	<tr>
		<td><input type='hidden' value='ok' name='form'/> </td> <td></td>
	
	</tr>
	<tr>
		<td> </td> <td></td>
	
	</tr>
	<tr>
		<td> 
		</td> 
			<td> <input type="submit" value='Envoyer' onclick="validForm('nom','','R','mail','','RisEmail','message','','R','resultat','','R');return document.MM_returnValue"/>
		
		</td>
	
	</tr>
	</table>
	</form>
	
	
<?php 
	}
?>

</div>