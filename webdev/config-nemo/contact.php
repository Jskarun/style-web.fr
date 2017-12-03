<?php ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	
	
		<?php include('inc/header.php'); ?>	
	
	
	
	
	<!-- Corps de page-->
	<table cellspacing='0' style='width:100%;height:100%;'><tr><td id="coteG"></td><td style='width:1000px;'>
	<div id="bloc-central">
	<br/><br/><br/>
	
	<div class='encart'><b>Vous avez un demande ? </b><br/><br/>
           Nous vous rappellons que ce formulaire est réservé aux professionnels du domaine Informatique.<br/>Pour toute demande concernant les tarifs, les disponibilités des pièces ainsi que tout autre demande, merci d'utiliser le formulaire ci-contre.
    </div>
	
<?php 
  if( isset($_GET[form_contact]) && $_GET[form_contact] == ok){
      
      // on inclu la fonction mail 
	  include('../dyn/fonc_mail.php');
      
      //on extrait les données précedentes
      $prenom = $_POST['prenom'];
      $nom = $_POST['nom'];
      $societe = $_POST['societe'];
      $email = $_POST['email'];
      $contactki = $_POST['contactki'];
      $sujet = $_POST['sujet'];
      $message = $_POST['message'];
      
      //on transforme les sauts de ligne de la textarea pour les récupérer dans le mail
     $message = ereg_replace("\n", "<br/>", $message);
     
     // Réglages d'envoi du mail :
	$typecontact = '[CONFIGURATEUR BTO NEMO] '.stripslashes($sujet);
	$from = 'ContactNemo@nemo-fr.com';
	$to = $contactki;
	$reply = $email;
	$contenu = "<html><img src='http://www.nemo-fr.com/medias-nemo/images/entete_nemo_contact.jpg' border='0'/><br/><br/><b>".ucfirst($prenom)." ".ucfirst($nom)." </b>de la société <b>".$societe."</b> souhaite vous contacter : <br/>..................................................<br/>".stripslashes($message)."<br/><br/><br/><br/>
 	<a href=\"mailto:$email?subject=Nemo [Réponse] ".stripslashes(ucfirst($sujet))."\">Répondre &agrave; ".ucfirst($prenom)." ".ucfirst($nom)."</a> <i> ou utilisez la commande réponse de votre logiciel de messagerie</i><hr/>"; 
	
	//////////////////////////////////////////
	//envoi du mail de contact :
	//////////////////////////////////////////
	$etat = mail_go( $to, $from, $typecontact, $reply, $contenu,0 );
	// on previent l'internaute que son message est envoyé
    if ($etat == true){
    
    	echo "<br/><br/><p class='texte'><b>Votre message a été envoyé.<br/></b> Nous allons traiter votre demande dans les meilleurs délais. Merci.</b></p><br/>  <a href='index.php'>  > Retour au choix de configs</a> ";

      }
}else
      {
?>	
      
      <form name="form1" method="post" action="contact.php?form_contact=ok">
     		<table id='form-contact' cellspacing="5" cellspadding="4">
			<tr><td><i>Les champs marqu&eacute;s du signe <font color="red">*</font> sont obligatoires.</i></td></tr>
			<tr><td></td></tr>
			<tr>
				<td>Nom <font color="red">*</font> : </td><td><input type="text" name="nom"></input></td>
			</tr>
			<tr>
				<td>Prénom  : </td><td class="espace_saisie"><input type="text" name="prenom"></td>
			</tr>
			<tr>
				<td>Société <font color="red">*</font> : </td><td ><input type="text" name="societe"></td>
			</tr>
			<tr>
				<td class="champs_form">Email <font color="red">*</font> : </td><td><input type="text" name="email" size="40"></td>
			</tr>
			<tr>
				<td>Vous souhaitez contacter <font color="red">*</font> : </td>   
				<td>
					<select name="contactki" id="contactki">
        				<option selected="selected">-- Selectionnez dans la liste --</option>
        				<option value="commerc">L'Equipe Commerciale</option>
        				<option value="compta">La comptabilité</option>
        				<option value="sav">Le SAV</option>
        				<option value="webm">Le Webmaster</option>
						<option value="webm">Peu Importe</option>
      				</select>
      			</td>
			</tr>		
			
				<tr>
				<td> </td><td> </td>
			</tr>				
			
				<tr>
				<td> </td><td> </td>
			</tr>																
			<tr>
			<td>Sujet  : </td><td><input type="text" name="sujet" size="40" value="<?php  echo $_GET['sujet'];?>"></input></td>
			</tr>
     		<tr>
				<td style="vertical-align:top;">Message <font color="red">*</font> : </td ><td><textarea cols="39" rows="15" name="message"></textarea></td>
			</tr>
			 <tr>
			 	<td></td>	
			 	<td id='bout-envoi'><input name="Submit" type="image" onClick="MM_validateForm('nom','','R','societe','','R','contactki','','R','message','','R','email','','RisEmail','','R');return document.MM_returnValue" src="pics/bout-envoyer-mini.jpg" style="border-width:0px;"/></td></tr>
			
			
     			</table>
	</form>
<?php } ?>
	<br/><br/>
<hr style="clear:both;border:#EEE 1px solid;margin:0px 0px 10px 0px;">
	<?php include('inc/pied.php');?>
	</div>
	</td><td id="coteD"></td></tr></table>
	<!-- FIN corps de page -->
	
		
	
	
	
	
	
	
		
	</body>
</html>
