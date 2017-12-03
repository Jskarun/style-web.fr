<?php
// Fonction Mail
	
	function mail_to( $to, $from, $typecontact, $reply, $contenu)
	{
		//En-tetes du mail
		$entetemail = "From: ".$from."\n";
		$entetemail .= "Reply-to: ".$reply."\n";
		$entetemail .= "MIME-Version: 1.0\n";
		$entetemail .= "Content-Type: text/html; charset=UTF8\r\n";
		$entetemail .= "Content-Transfer-Encoding:8bit\r\n";
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
	
	
	
	function CheckEmailer( $mail ) 
	{
		if ( eregi( '^[a-zA-Z0-9_]+@[a-zA-Z0-9\-]+\.[a-zA-Z0-9\-\.]+$]', $mail ) ) {
			return false;
		}
	list( $Username, $Domain ) = explode( '@', $mail );
		if ( getmxrr( $Domain, $MXHost ) ) {
			return true;
		} else {
			return false;
		} 

	} 

?>
