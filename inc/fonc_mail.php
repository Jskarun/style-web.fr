<?php
// Fonction Mail
	
	function mail_to( $to, $from, $typecontact, $reply, $contenu,$pj )
	{
		
			// $boundary='------------------------------------------------------------------------------------';
			
			//En-tetes du mail
			$entetemail = "From: ".$from."\n";
			$entetemail .= "Reply-to: ".$reply."\n";
			$entetemail .= "MIME-Version: 1.0\n";
			$entetemail .= "Content-Type: text/html; charset=UTF8\r\n";
			$entetemail .= "Content-Transfer-Encoding:8bit\r\n";
			// $entetemail .= "Content-Type: multipart/mixed; boundary=".$boundary;

					
			if($pj != 0){
			/* Piece jointe */
				
			$fichier=file_get_contents($pj);
			
			/* On utilise aussi chunk_split() qui organisera comme il faut l'encodage fait en base 64 pour se conformer aux standards */
			$fichier=chunk_split( base64_encode($fichier) );
				
								
			
			//Ecriture de la piece jointe
			$body = $body."--".$boundary."\nContent-Type: image/jpeg; name=\"Nom_fichier\"\r\nContent-Transfer-Encoding: base64\r\nContent-Disposition: attachement; filename=\"kbis_extrait\"\r\n\n".$fichier;
			}
			
			
				

			$body = $contenu;
			/////////////////////////////////////////////
		
		
		//Envoi du mail de contact :
		////////////////////////////////////////////
		if (mail($to, $typecontact, $body, $entetemail)) 
			$sended = true;
		else
			$sended = false;
		
		return $sended;

	}	

?>
