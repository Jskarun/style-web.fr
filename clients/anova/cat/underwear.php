<?php 

	// CONNEXION BDD
	include('inc/connex.php');
	

	// TEST ET CONDITION CONNEXION
	// on vérifie les variables de session

	if($_SESSION['login'] == "auth-anunder"){
		// si session ouverte --> afichage contenu	
		?>
		
			<div class='data'>
				<img src="photos/underwear36528765/U1.jpg" data-large='photos/underwear36528765/hd/U1.jpg' alt=""/>
				<img src="photos/underwear36528765/U2.jpg" data-large='photos/underwear36528765/hd/U2.jpg' alt=""/>
				<img src="photos/underwear36528765/U3.jpg" data-large='photos/underwear36528765/hd/U3.jpg' alt=""/>
				<img src="photos/underwear36528765/U4.jpg" data-large='photos/underwear36528765/hd/U4.jpg' alt=""/>
				<img src="photos/underwear36528765/U5.jpg" data-large='photos/underwear36528765/hd/U5.jpg' alt=""/>
				<img src="photos/underwear36528765/U6.jpg" data-large='photos/underwear36528765/hd/U6.jpg' alt=""/>
				<img src="photos/underwear36528765/U7.jpg" data-large='photos/underwear36528765/hd/U7.jpg' alt=""/>
				<img src="photos/underwear36528765/U8.jpg" data-large='photos/underwear36528765/hd/U8.jpg' alt=""/>
				<img src="photos/underwear36528765/U9.jpg" data-large='photos/underwear36528765/hd/U9.jpg' alt=""/>
				<img src="photos/underwear36528765/U10.jpg" data-large='photos/underwear36528765/hd/U10.jpg' alt=""/>
				<img src="photos/underwear36528765/U11.jpg" data-large='photos/underwear36528765/hd/U11.jpg' alt=""/>
				<img src="photos/underwear36528765/U12.jpg" data-large='photos/underwear36528765/hd/U12.jpg' alt=""/>
				<img src="photos/underwear36528765/U13.jpg" data-large='photos/underwear36528765/hd/U13.jpg' alt=""/>
				<img src="photos/underwear36528765/U14.jpg" data-large='photos/underwear36528765/hd/U14.jpg' alt=""/>
				<img src="photos/underwear36528765/U15.jpg" data-large='photos/underwear36528765/hd/U15.jpg' alt=""/>
    		</div>
	


			<!--[if !IE]><!--> 
			<script type="text/javascript">
	
				$('img[data-large]').touchGallery({
        			getSource: function() { 
          				return $(this).attr('data-large');
        			}
     			 });
     	
    		</script>
			<!--<![endif]-->				
	<?php
	}else{
		// si session fermée, on teste les identifiants
	
		if ( isset($_GET['form_priv']) && $_GET['form_priv'] == 'ok'){
			
			// on récupère les données du formulaire
			$login = $_POST['login'];
			$pass = md5($_POST['pass']);
		
			// on test les identifiants
			$requete = "SELECT nom,prenom,pass,valid FROM an_users WHERE login='".$login."'";
			$exreq = mysql_query($requete) or die ("Erreur Sql ! ".$requete);
			$exres = mysql_fetch_array($exreq);
			
			
			if( $exres['valid'] == 1 ){ // accès validé
				if($exres['pass'] == $pass){
					// si pass correspond on renseigne variable de session
					$_SESSION['login'] = 'auth-anunder';
					$_SESSION['nom'] = ucfirst($exres['nom']);
					$_SESSION['prenom'] = ucfirst($exres['prenom']);
					
					echo "Connexion en cours, merci de patienter ... ";
					// redirection javascript
					print ("<script language = \"JavaScript\">"); 
					print ("location.href = 'content.php?pg=fashion&cat=underwear'"); 
					print ("</script>");
					
				}else{
					// si mauvais password
					echo " <br/><br/><br/><p class='info-message'>Les identifiants saisis sont incorrects, merci de recommencer.<br/><br/><a href='content.php?pg=fashion&amp;cat=underwear'>Retour</a></p>";
				}
			}else{
				// si accès non validé
				echo "<br/><br/><br/> <p class='info-message'>Votre demande d'accès est en cours de vérification. Merci de renouveler ultérieurement.<br/><br/><a href='content.php?pg=fashion&amp;cat=underwear'>Retour</a></p>";
			
			}
			
	}else{
	
		if ( isset($_GET['req']) && $_GET['req'] == 'yes'){
		
		// si demande de code d'acces, on affiche le formulaire de demande
		
			if ( isset($_GET['form_req']) && $_GET['form_req'] == 'ok'){
			// si formulaire de demande rempli
				// test de spam
				if ($_POST['resultat_spam'] == '5'){
					
					$nom = ucfirst($_POST['nom']);
					$prenom = ucfirst($_POST['prenom']);
					$societe = ucfirst($_POST['societe']);
					$fonction = ucfirst($_POST['fonction']);
					$ville = ucfirst($_POST['ville']);
					$mail = $_POST['mail'];
					$tel = $_POST['tel'];
					$message = $_POST['message'];
					$date = date('Y').'/'.date('m') .'/'.date('d');
					//*****************
					
					// Test si utilisateur déja existant 
					$test_exist = "SELECT * FROM an_users WHERE email='$mail'";
					$ex_test_exist = mysql_query($test_exist) or die ('Erreur SQL ! : '.$test_exist);
					$res_test_exist = mysql_fetch_array($ex_test_exist);
					if (!empty($res_test_exist)){
						echo "<br/><br/><br/><p class='info-message'> Une demande a déjà été faite avec cette adresse mail. Veuillez recommencer ultérieurement.</p>";
					
					}
						else{
						
						// Enregistrement BDD
						$add_user = "INSERT INTO an_users (nom, prenom, societe, fonction, ville, email, telephone, date, valid) "." VALUES ('$nom', '$prenom', '$societe', '$fonction', '$ville', '$mail', '$tel', '$date', '0')";
						$ex_add_user = mysql_query($add_user) or die ('Erreur SQL ! : '.$add_user);
						
						// Recupération de l'id de l'enregistrement
						$id = mysql_insert_id();
						
						
						//on transforme les sauts de ligne de la textarea pour les récupérer dans le mail
						$message = ereg_replace("\n", "<br/>", $message);
				
						// Préparation de l'entete pour l'envoi mail
						$typecontact = "Demande d'accès [ AmandineNova.fr ] ".strtoupper($nom)." ".strtoupper($prenom);
						$from = $mail;
						$to = 'contact@amandinenova.fr';
						$webm = 'j.escaravage@styleoweb.fr';
						$reply = $mail;
						$contenu = "<html><body><img src='http://www.amandinenova.fr/images/entete.jpg' alt='Amandine Nova'/><br/><u>".ucfirst($prenom)." ".ucfirst($nom)."</u> de la société <b>".$societe."</b> a fait une demande d'accès via <a href='http://www.amandinenova.fr'><b>AmandineNova.fr</b></a><br/>Voici les informations qu'il a renseigné :<br/><br/><span style='padding:5px;display:block;border-style:solid;border-width:1px;border-color:#eee;color:#448888;'> Société : <b>".$societe."</b><br/> Fonction : <b>".$fonction."</b><br/>Ville : <b>".$ville."</b><br/>Tel : <b>".$tel."</b><br/><br/><u>Message :</u><br/> ".stripslashes($message)."</span><br/>» <a href='http://www.amandinenova.fr/inc/action.php?w=accept&id=".$id."'>Accepter</a> | » <a href='http://www.amandinenova.fr/inc/action.php?w=refus&id=".$id."'>Refuser</a></body></html>";
				
						
						include('inc/fonc_mail.php');
						$validmail = CheckEmailer($from);
						if ($validmail == 'true'){
							// Envoi du mail
							//copie mail dev
							mail_to( $webm, $from, $typecontact, $reply, $contenu);
							$ans = mail_to( $to, $from, $typecontact, $reply, $contenu);
							if ($ans == true) 
								echo "<br/><br/><br/><p class='info-message'> Votre demande d'accès a bien été envoyée. <br/> Après acceptation, vous recevrez prochainement un mail avec vos identifiants. </p> ";
							else
								echo "<br/><br/><br/><p class='info-message'> Une erreur est survenue à l'envoi du mail. Veuillez recommencer ultérieurement.<br/>» <a href='javascript:history.back()'> Retour</a></p>";
						}else{
							echo "<br/><br/><br/><p class='info-message'> Votre adresse mail n'est pas correcte. Veuillez recommencer ultérieurement.<br/>» <a href='javascript:history.back()'> Retour</a></p>";
						}
					}
				}else
					echo "<br/><br/><br/><p class='info-message'>Le résultat de l'opération est faux. Veuillez recommencer ultérieurement.<br/>» <a href='javascript:history.back()'> Retour</a></p>";		
			
			}else{
		?>	
				<div id='bloc-req'>
				
					<div id='tab-req'>
					<form action='content.php?pg=fashion&amp;cat=underwear&amp;req=yes&amp;form_req=ok' method="post">
							<table>
							<tr>
								<td colspan='4'>Remplir le formulaire ci dessous pour obtenir un accès à cette partie du site</td>
							</tr>
							<tr>
								<td colspan='4'></td>
							</tr>
							<tr>
								<td>Nom :</td><td><input type='text' name='nom' value=''/></td><td>Ville :</td><td><input type='text' name='ville' value=''/></td>
							</tr>
							<tr>
								<td>Prénom :</td><td><input type='text' name='prenom' value=''/></td><td>Email :</td><td><input type='text' name='mail' value=''/></td>
							</tr>
							<tr>
								<td>Société :</td><td><input type='text' name='societe' value=''/></td><td>Téléphone :</td><td><input type='text' name='tel' value=''/></td>
							</tr>
							<tr>
								<td>Fonction :</td><td><input type='text' name='fonction' value=''/></td><td colspan='2'></td>
							</tr>
							<tr>
								<td style='vertical-align:top;'>Message :</td><td colspan='2'><textarea name='message' style='font-style: italic ;'>( Objet de votre demande )</textarea></td><td><input style='border:0px;' type='submit' class='submit' value='' onclick="validForm('nom','','R','prenom','','R','societe','','R','fonction','','R','ville','','R','resultat_spam','','R','mail','','RisEmail','tel','','','tel','','R');return document.MM_returnValue"/></td>
							</tr>
							<tr>
								<td>Anti-spam  :</td><td><input style='font-style: italic ;' type='text' name='resultat_spam' value='(Résultat de 2+3)'/></td>
							</tr>
							</table>
						</form>
					</div>
				</div>
			
		<?php
			}
		}else{
		// sinon pas identifié ou affichage par defaut
			?><br/>
			<div id='bloc-login'>
			
				<div id='tab-login'>
				<form action='content.php?pg=fashion&amp;cat=underwear&amp;form_priv=ok' method="post">
						<table>
						<tr>
							<td colspan='2'>Pour accéder à la partie privée de ce site, veuillez vous connecter.</td>
						</tr>
						<tr>
							<td><b>Utilisateur :</b> </td><td><input type='text' name='login' value=''/></td>
						</tr>
						<tr>
							<td><b>Mot de passe :</b></td><td><input type='password' name='pass' value=''/></td>
						</tr>
						<tr>	
							<td></td><td><input style='border:0px;' type='submit' class='submit' value='' onclick="validForm('login','','R','pass','','R');return document.MM_returnValue"/></td>
						</tr>
						<tr>
							<td colspan='2' style='text-align:right;'><a href='content.php?pg=fashion&amp;cat=underwear&amp;req=yes'>Demander un code d'accès</a></td>
						</tr>
						</table>
					</form>
				</div>
			</div>
			<?php		
		}
	}
}














?>