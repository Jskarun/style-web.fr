<?php ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<script language="JavaScript" type="text/JavaScript">

function MM_validateForm() { //v4.0
		
  		var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
  		for (i=0; i<(args.length-2); i+=3) { test=args[i+2]; val=MM_findObj(args[i]);
    	if (val) { nm=val.name; if ((val=val.value)!="") {
      	if (test.indexOf('isEmail')!=-1) { p=val.indexOf('@');
        if (p<1 || p==(val.length-1)) errors+='- '+nm+' doit être une adresse mail valide afin que nous puissions traiter votre demande.\n\n';
      	} 
      		else if (test!='R') { num = parseFloat(val);
        			if (isNaN(val)) errors+='- '+nm+' must contain a number.\n';
        			if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
         			min=test.substring(8,p); max=test.substring(p+1);
          			if (num<min || max<num) errors+='- '+nm+' must contain a number between '+min+' and '+max+'.\n';
        			
    	} 
    	}else 
    				{
    						if (val == '-- Choix --') errors +='> ' +nm+' doit etre renseignée.\n'; 
    		  				if (val == '-- Selectionnez dans la liste --') errors +='> Merci de selectionner le commercial pour l\'envoi du devis\n'; 
    				}
    	}else if (test.charAt(0) == 'R') errors += '> '+nm+'\n'; }
  		} if (errors) alert('Attention, Champ(s) Obligatoire(s):\n\n'+errors);
  		document.MM_returnValue = (errors == '');
		}
		
function MM_findObj(n, d) { //v4.01
  		var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    	d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  		if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  		for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  		if(!x && d.getElementById) x=d.getElementById(n); return x;
		}
		
</script>

<?php
// on inclu la fonction mail 
include('../dyn/fonc_mail.php');

// on récupère le contenu du devis
$contenu = $_POST['transfert'];

if( isset($_GET['form']) && $_GET['form']=='ok' && $_POST['message'] != ""){

$mail = $_POST['mail'];
$societe = stripslashes($_POST['societe']);
$nom = $_POST['nom'];
$prenom = $_POST['prenom'];
$selectcommer = $_POST['selectcomm'];
$message = $_POST['message'];
$commentaires = stripslashes($_POST['comm']);
$commentaires = ereg_replace("\n", "<br/>", $commentaires);
$type_devis = $_POST['nat_devis'];

// on génère un numéro de DEVIS
$lettres = array('A','B','C','D','E','F','G','H','I','J','K','L','M','O','P','Q','R');
$choixLettre = mt_rand(0,count($lettres));
$nbrand = date('d').date('m').date('Y').$lettres[$choixLettre].mt_rand(0,9).mt_rand(0,9).mt_rand(0,9);
//

// on decode le contenu de devis envoyé depuis javascript
$message = urldecode($message);
$message = ereg_replace('%u20AC', '&euro;', $message);

if( $type_devis == 'commande') $img_devis='icon_commande.jpg';
if( $type_devis == 'devis') $img_devis='icon_devis.jpg';

$contenu = "<img src='http://www.nemo-fr.com/medias-nemo/images/".$img_devis."' alt='' border='0'/>";


$contenu .= "<p style='font-size:12px;'>Vous avez reçu un nouveau devis du configurateur Bto Nemo de la part de <b>".ucfirst($nom)." ".ucfirst($prenom)."</b>, société <b>".ucfirst($societe)."</b></p><div style='border: 1px dotted #BBB;padding:5px;>".$message."</div>";

if( !empty($commentaires)){
	$contenu .= "<br/><b style='font-color:#AA2222'> ! Le client à ajouté les commentaires suivants !</b> :<br/><br/> ".$commentaires."<br/>";
	}

// Réglages d'envoi du mail pour nemo :
 	
 	$sujet = 'Devis Bto | '.$_POST[societe].' N° '.$nbrand;
	$typecontact = '[NEMO BtoB] '.stripslashes($sujet);
	$from = $mail;
	$to = $selectcommer;
	//$to = 'webm';
	$reply = $mail;
	
	//////////////////////////////////////////
	//envoi du mail 
	//////////////////////////////////////////
	$etat = mail_go( $to, $from, $typecontact, $reply, $contenu,0 );
	
//envoi mail au client
$contenu = "<p style='font-size:12px;'>Bonjour,
<br/>nous vous informons que votre devis a bien été envoyé à votre commercial Nemo.<br/><br/> Voici le récapitulatif de celui-ci :<br/><span style='font-weight:bold;font-style:italic;font-color:#555;font-size:12px;'><u>Devis n° ".$nbrand."</u></span></p><div style='border: 1px dotted #BBB;padding:5px;>".$message."</div><br/>Pour toute demande de modification, merci de vous adresser à votre commercial Nemo ou d'utiliser le <a href='http://www.nemo-fr.com/contact.php'>formulaire de contact Nemo</a> en <b>indiquant le numéro de votre devis</b>.<br/><br/>Cordialement,<br/>L'équipe Nemo.";

// Réglages d'envoi du mail client:
 	
 	$sujet = 'Confirmation de votre devis Bto';
	$typecontact = '[NEMO BtoB] '.stripslashes($sujet);
	$from = 'webmaster@nemo-fr.com';
	$to = $mail;
	$reply = 'noreply@nemo-fr.com';
	
	//////////////////////////////////////////
	//envoi du mail 
	//////////////////////////////////////////
	mail_go( $to, $from, $typecontact, $reply, $contenu,0 );

	// on previent l'internaute que son message est envoyé
    if ($etat == true){
    
    	echo "<p class='texte'><b>Votre devis a été envoyé.<br/></b> Nous allons traiter votre demande dans les meilleurs délais. Merci.</b></p><br/> <input type='submit' value='Fermer' onclick='window.close()'/> ";
    }


}else{

?>

<body style='font-size:11px;'>

<form name="formdevis" method="post" action='mail_devis.php?form=ok'>

Vous souhaitez nous envoyer votre devis par mail, merci de remplir les informations ci dessous :<br/><br/>

	<table style='font-size:11px;'>
		<tr>
			<td>Votre nom : </td><td><input type='text' name='nom'/></td>
		</tr>
		<tr>
			<td>Votre prénom : </td><td><input type='text' name='prenom'/></td>
		</tr>
		<tr>
			<td>Votre société : </td><td><input type='text' name='societe'/></td>
		</tr>
		<tr>
			<td>Votre email : </td><td><input type='text' name='mail'/></td>
		</tr>
		<tr>
			<td>Votre commercial Nemo : </td>
						<td>
							<select name="selectcomm">
        						<option selected="selected">-- Selectionnez dans la liste --</option>
        						<option value="nico">Nicolas</option>
        						<option value="bert">Bertrand</option>
        						<option value="dom">Dominique</option>
        						<option value="david">David</option>
								<option value="paolo">Paolo</option>
								<option value="mur">Muriel</option>
								<option value="ade">Adeline</option>
								<option value="san">Sandrine</option>
								<option value="nath">Peu importe</option>
      						</select>
      					</td>
		</tr>
		
		<tr>
			<td>Nature du devis : </td><td>Devis <input type='radio' name='nat_devis'value='devis'/> Commande <input type='radio' name='nat_devis'value='commande'/></td>
		</tr>
		
		<tr>
			<td valign=top>Commentaires sur ce devis : </td><td><textarea cols='40' rows='10' name='comm'/></textarea></td>
		</tr>
		<tr>
			<td><input type='hidden' name='message' value="<?php echo $contenu; ?>" /></td><td></td>
		</tr>
		<tr>
			<td></td><td><input type='image' src="../medias-nemo/images/bouton_valider.jpg" onClick="MM_validateForm('nom','','R','societe','','R','selectcomm','','R','mail','','RisEmail','','R');return document.MM_returnValue" /></td>
		</tr>
</table>
</form>

<?php
}
?>

</body>

</html>
