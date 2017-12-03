<?php session_start(); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">

<head>
  	<?php include('inc/header.php');?>
</head>

<body>
<?php 
	$idact = 'acting';
	$idfash = 'fashion';
	$idcomp = 'composite';
	$idbio = 'bio';
	$idcont = 'contact';
	
	// on récupère la page en cours pour background du lien en cours
	if ( isset($_GET['pg']) ) {
		$page = $_GET['pg'];
		if ($page == 'fashion') $idfash = 'fashion_on';
		if ($page == 'acting') $idact = 'acting_on';
		if ($page == 'composite') $idcomp = 'composite_on';
		if ($page == 'bio') $idbio = 'bio_on';
		if ($page == 'contact') $idcont = 'contact_on';	
	}else 
	// par défaut on active l'onglet Fashion
	$idfash = 'fashion_on';
	//
	
	

?>	
	<!--HEADER SITE-->
	
	<table id='tab-header' cellpadding="0" cellspacing="0">
		<tr>
			<td id='mg-head'></td>
			<td>
				<a href='main.php?pg=fashion'><img  src='images/header.jpg' alt='Amandine Nova - Mannequin'/></a>
			</td>
			<td id='md-head'></td>
		</tr>
	</table>
	
	<!--MENU PRINCIPAL-->
	<?php include ('inc/menu.php');?>
		
	<!--FIN MENU PRINCIPAL-->
	
	<table id='tab-main' cellpadding="0" cellspacing="0">
		<tr>
			<td id='mg'> </td>
			
			<td> 
			
			<!--DEBUT TABLEAU DECOUPAGE LIENS POLAROID-->
			<table id='content' border="0" cellpadding="0" cellspacing="0" width="1039">

			<tr>
   				<td colspan="3"><img src="images/bg_site_an_r1_c1.jpg" width="1039" height="281" border="0" alt="" /></td>
  			</tr>
  			<tr>
   				<td rowspan="3"><img src="images/bg_site_an_r2_c1.jpg" width="65" height="200" border="0" alt="" /></td>
  				 <td><table align="left" border="0" cellpadding="0" cellspacing="0" width="943">
	 		 <tr>
	  			 <td><table align="left" border="0" cellpadding="0" cellspacing="0" width="187">
		 	 <tr>
		  		 <td><a href='content.php?pg=fashion&amp;cat=beauty' id='lien-beauty'></a></td>
		  	 </tr>
		  	 <tr>
		   		 <td><img src="images/bg_site_an_r5_c2.jpg" width="187" height="59" border="0" alt="" /></td>
		  	 </tr>
			 </table></td>
	   		 	<td><img src="images/bg_site_an_r2_c3.jpg" width="72" height="138" border="0" alt="" /></td>
	   	 	 	<td><table align="left" border="0" cellpadding="0" cellspacing="0" width="208">
		  	 <tr>
		   	 	<td><img src="images/bg_site_an_r2_c4.jpg" width="208" height="85" border="0" alt="" /></td>
		  	 </tr>
		  	 <tr>
		   	 	<td><a href='content.php?pg=fashion&amp;cat=fashion' id='lien-fashion'></a></td>
		  	 </tr>
			 </table></td>
	   	 	    <td><img src="images/bg_site_an_r2_c5.jpg" width="8" height="138" border="0" alt="" /></td>
	   		    <td><table align="left" border="0" cellpadding="0" cellspacing="0" width="209">
		  	 <tr>
		   	    <td><img src="images/bg_site_an_r2_c6.jpg" width="209" height="18" border="0" alt="" /></td>
		  	 </tr>
		  	 <tr>
		   	 	<td><a href='content.php?pg=fashion&amp;cat=romance' id='lien-romance'></a></td>
		  	 </tr>
		  	 <tr>
		   	 	<td><img src="images/bg_site_an_r5_c6.jpg" width="209" height="59" border="0" alt="" /></td>
		  	 </tr>
		  	 </table></td>
	   	  	 	<td><img src="images/bg_site_an_r2_c7.jpg" width="23" height="138" border="0" alt="" /></td>
	   	  		<td><table align="left" border="0" cellpadding="0" cellspacing="0" width="236">
		  	 <tr>
		    	<td><img src="images/bg_site_an_r2_c8.jpg" width="236" height="25" border="0" alt="" /></td>
		  	 </tr>
		  	 <tr>
		     	<td><a href='content.php?pg=fashion&amp;cat=underwear' id='lien-underwear'></a></td>
		  	 </tr>
		   	 <tr>
		   	 	<td><img src="images/bg_site_an_r7_c8.jpg" width="236" height="17" border="0" alt="" /></td>
		     </tr>
			 </table></td>
	  		 </tr>
			 </table></td>
   			 	<td rowspan="3"><img src="images/bg_site_an_r2_c10.jpg" width="31" height="200" border="0" alt="" /></td>
  			 </tr>
  			 <tr>
   			 	<td><img src="images/bg_site_an_r8_c2.jpg" width="943" height="44" border="0" alt="" /></td>
   			 </tr>
  		  	 <tr>
   			 	<td><table align="left" border="0" cellpadding="0" cellspacing="0" width="943">
	  		 <tr>
	   			<td id='footer'>
	   				
  				</td>
	     		<td><img src="images/bg_site_an_r9_c9.jpg" width="39" height="18" border="0" alt="" /></td>
	  		</tr>
			</table></td>
  			</tr>

			</table>
			
			<!--FIN TABLEAU DECOUPAGE LIENS POLAROID-->
			</td>

			<td id='md'></td>
		</tr>
		<tr>
			<td></td>
			<td>
				<p class='footer-text'>© Copyright Amandine Nova - 2011 • Webdesign <a href='http://www.oledie.fr'>www.oledie.fr</a>  • Développement <a href='http://www.styleoweb.fr' target='_blank'>StyleOWeb</a></p>
			</td>
			<td></td>
		</tr>
	</table>
	
</body>
</html>




