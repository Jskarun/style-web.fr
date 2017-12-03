<?php session_start();  ?>
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
	$idbeauty = 'a_off';
	$idfashion = 'a_off';
	$idromance = 'a_off';
	$idunderwear = 'a_off';
	// on récupère la page en cours pour background du sous lien en cours
	if ( isset($_GET['cat']) ) {
		$cat = $_GET['cat'];
		if ($cat == 'beauty') $idbeauty = 'a_on';
		if ($cat == 'fashion') $idfashion = 'a_on';
		if ($cat == 'romance') $idromance = 'a_on';
		if ($cat == 'underwear') $idunderwear = 'a_on';
		
	}
	

?>	
	<!--HEADER SITE-->
	
	<table id='tab-header' cellpadding="0" cellspacing="0">
		<tr>
			<td id='mg-head'></td>
			<td>
				<a href="main.php?pg=fashion"><img  src="images/header.jpg" alt="Amandine Nova - Mannequin"/></a>
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
			
			<!--DEBUT TABLEAU CONTENU-->
			<table id='content' border="0" cellpadding="0" cellspacing="0" width="1039">

  			<tr>
   				<td><img src="images/bg_site_contenu_r1_c1.jpg" width="65" height="481" border="0" alt="" /></td>
   				<td><table align="left" border="0" cellpadding="0" cellspacing="0" width="904">
	  		<tr>
	  		
	   			<td>
	   				<!-- ZONE DE CONTENU -->
	   				<div id='content-area'>
	   				
	   				<?php 
	   					// si page galleries
	   					if(isset($_GET['pg']) && $_GET['pg']=='fashion'){?>	
	   				
	   					<div id='ssmenu'> 
	   						<ul>
	   							<li><a class="<?php echo $idbeauty; ?>" href='content.php?pg=fashion&amp;cat=beauty'>Beauty</a></li>
	   							<li><a class="<?php echo $idfashion; ?>" href='content.php?pg=fashion&amp;cat=fashion'>Fashion</a></li>
	   							<li><a class="<?php echo $idromance; ?>" href='content.php?pg=fashion&amp;cat=romance'>Romance</a></li>
	   							<li><a class="<?php echo $idunderwear; ?>" href='content.php?pg=fashion&amp;cat=underwear'>Underwear</a></li>
	   							
	   							<?php if($_SESSION['login'] == "auth-anunder") echo "<li class='deco'><span> ".$_SESSION['nom']." ".$_SESSION['prenom']." » <a href='content.php?pg=fashion&amp;cat=underwear&amp;session=destr'>Déconnexion</a></span></li>";?>
	   						</ul>
	   					<p id='notipad'>» Cliquez sur les photos pour voir en plein écran ou scrollez à 2 doigts pour faire défiler</p>
	   						
	   					</div>
	   					
	   					
	   					<?php // choix de gallerie
	   				
	   					if(isset($_GET['cat']) && $_GET['cat']=='beauty')
	   						include ('cat/beauty.php');
	   					if(isset($_GET['cat']) && $_GET['cat']=='fashion')
	   						include ('cat/fashion.php');
	   					if(isset($_GET['cat']) && $_GET['cat']=='romance')
	   						include ('cat/romance.php');
	   					if(isset($_GET['cat']) && $_GET['cat']=='underwear')
	   						include ('cat/underwear.php');
	   					?>
	   					
	   				
	   				<?php }
	   				// si page contact
	   					else {
	   						if (isset($_GET['pg']) && $_GET['pg']=='contact'){
	   							include ('inc/contact.php');
	   						}else {
	   							if (isset($_GET['pg']) && $_GET['pg']=='bio'){
	   								include ('inc/bio.php');
	   							}else 
	   								if(isset($_GET['pg']) && $_GET['pg']=='acting'){
	   									include ('inc/acting.php');	
	   								}else 
	   									if(isset($_GET['pg']) && $_GET['pg']=='composite'){
	   										include ('inc/composite.php');	
	   								}
	   								
	   							}
	   						}
	   						
	   				 ?>	
	   				</div>	
	   				<!-- FIN ZONE DE CONTENU -->
	   			</td>
	  		
	  		</tr>
	  		<tr>
	   			<td id='footer'>
	   				
  				</td>
	  		</tr>
			</table></td>
   				<td><img src="images/bg_site_contenu_r1_c3.jpg" width="70" height="481" border="0" alt="" /></td>
  			</tr>
			</table>
			
			<!--FIN TABLEAU CONTENU-->
			</td>

			<td id='md'></td>
		</tr>
		<tr>
			<td></td>
			<td>
				<p class='footer-text'>© Copyright Amandine Nova - 2011 • Webdesign <a href='http://www.oledie.fr' target='_blank'>www.oledie.fr</a>  • Développement <a href='http://www.styleoweb.fr' target='_blank'>StyleOWeb</a></p>
			</td>
			<td></td>
		</tr>
	</table>
	
	
	
	
</body>
</html>




