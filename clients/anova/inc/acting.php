<?php 
// 
	if ( isset($_GET['c']) ) {
		$scat = $_GET['c'];
		if ($scat == 'mov') {
			$idmov = 'a_on';
			$idadv = 'a_off';
		}
		if ($scat == 'adv'){
			$idadv = 'a_on';
			$idmov = 'a_off';
		} 
	}else {
	// par défaut on active l'onglet Version fr
		$idmov = 'a_on';
		$idadv = 'a_off';
	}
	//
?>
<div id='ssmenu'> 
	<ul>
		<li><a class='<?php echo $idmov; ?>' href='content.php?pg=acting&amp;c=mov'>Movie</a></li>
		<li><a class='<?php echo $idadv; ?>' href='content.php?pg=acting&amp;c=adv'>Advertising</a></li>
		
	</ul>
	
	<p id='notipad'>» Cliquez sur les photos ou les vidéos pour voir en plein écran ou scrollez à 2 doigts pour faire défiler</p>
</div>


<div class='data'>
	
	<div id="videogallery">
	
	<a rel="#voverlay" href="http://www.youtube.com/v/5tYBVtIu1dk?autoplay=1&rel=0&enablejsapi=1&playerapiid=ytplayer" >
		<img src="data/thumbnails/0.jpg" alt="" />
	</a>
	
	
	<img src="photos/acting/1.jpg" data-large='photos/acting/hd/1.jpg' alt=""/>
		<img src="photos/acting/2.jpg" data-large='photos/acting/hd/2.jpg' alt=""/>
		<img src="photos/acting/3.jpg" data-large='photos/acting/hd/3.jpg' alt=""/>
		<img src="photos/acting/4.jpg" data-large='photos/acting/hd/4.jpg' alt=""/>
		<img src="photos/acting/5.jpg" data-large='photos/acting/hd/5.jpg' alt=""/>
		<img src="photos/acting/6.jpg" data-large='photos/acting/hd/6.jpg' alt=""/>
		<img src="photos/acting/7.jpg" data-large='photos/acting/hd/7.jpg' alt=""/>
		<img src="photos/acting/8.jpg" data-large='photos/acting/hd/8.jpg' alt=""/>
	</div>
	

		
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
			
<div style='display:none;'>théâtre, comédie, cours Florent, cours Simon, studio Muller, casting, figuration,  court-métrage, long-métrage, réalisateurs, moyen-métrage, jeu de l'acteur, expression, visuel, cinéma, metteur en scène, artiste, passion, chef opérateur, production, mise  en scène, acte, scène, avant première, projection, critique, festival</div>	
