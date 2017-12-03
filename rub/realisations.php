<?php 
// mise en forme des travaux 
?>
<span class='t1'>Références </span> 

<div class='text-intro'> <p class='text-pres'> Réalisation Print ou Web, en passant par des applications multimédia offline, voici un aperçu de mes précédents travaux. Utiliser le menu pour cibler votre recherche. <br/> Si vous voulez en savoir un peu plus sur moi, consultez <a href='main.php?rub=services'>mon profil</a> !</p><img src='<?=$chemin_serveur?>pics/navig.jpg' alt=''/>


<!-- MENU REALISATIONS -->
	<ul id='menu-rea'>
		<li id='m-web'> <a href="<?=$chemin_serveur?>references-web.php"></a> Sites Web Flash ou Html </li>
		<li id='m-print'> <a href="<?=$chemin_serveur?>references-print.php"></a> Logos, Affiches, Catalogues
</li>		<li id='m-off'> <a href="<?=$chemin_serveur?>references-offline.php"></a>Applications Cd-Rom</li> 
		<li id='m-tout'> <a href="<?=$chemin_serveur?>references-all.php"></a>Voir l'ensemble des réalisations</li> 
	</ul>
<!-- FIN MENU -->



</div>


	
<!-- BLOC CONTENANT LES SOUS BLOCS REALISATIONS -->

	<div class='cont-rub'>
	<?php

	if( isset($_GET['spec'])){
		// affichage selon type travaux selectionné
		$spec = $_GET['spec'];
		
			switch ($spec) {
			case 'web':
				include('rub/rea-web.php');
    		break;
			case 'print':
				include('rub/rea-print.php');
   			break;
			case 'offline':
				include('rub/rea-off.php');
    		break;
    		case 'all':
    			include('rub/rea-web.php');
    			include('rub/rea-print.php');
    			include('rub/rea-off.php');
    		break;
		}
	}
	else{
		// on affiche par defaut les travaux WEB
		include ('rub/rea-web.php');
	}
	include('inc/foot-rea.php');			
	?>
	</div>
	
<!-- FIN BLOC -->




	
	
	
	
	

	
	

	

