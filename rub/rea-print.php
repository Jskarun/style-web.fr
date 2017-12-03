<?php 
// SELECTION DES TRAVAUX PRINT

	// Connexion à la base
	include ('inc/connex-base.php');

	if($_GET['spec'] == 'all'){
		echo "<span class='title-rub'>".$pucem." <b>TOUT</b> - Toutes mes réalisations</span>";	
	}else{
		echo "<span class='title-rub'>".$pucem." <b>PRINT</b> - Logos, Affiches, Catalogues</span>";
	}
	// on selectionne dans la base les travaux de la catégorie WEB
	$sqlweb = "SELECT * FROM sw_refs WHERE cat='print' AND online='1' ORDER BY id ASC";
	mysql_query("SET NAMES UTF8");
	$ex_sqlweb = mysql_query($sqlweb) or DIE ("Erreur SQL ! : ".$sqlweb);
	
	while ($tab_web = mysql_fetch_array($ex_sqlweb)){
		?>
	
		<div class='ban-workp'>
			
			<div class='desc'>
			
			<?php 
			
			if (!empty($tab_web[url2]))// si 2eme url minimum de renseignée
				// on affecte au lien de survol image la premiere URL et au lien texte la 2eme
				{	
					$urlpic = $tab_web[url];
					$urltext = $tab_web[url2];
					$relpic =  'lightbox['.$tab_web[id].']';
					$reltext = 'lightbox['.$tab_web[id].']';
				}
			else
				{
					$urlpic = $tab_web[url];
					$urltext = $tab_web[url];
					$relpic =  'lightbox';
					$reltext = 'lightbox';
				}
								
			?>	
			
			
			<p class='ban-link'>
				<?php echo"<a href='pics/works/".$urltext."' rel='$reltext' title='".$tab_web[nom]."'>  » Aperçu </a> ";?>
			</p>
						
			
			<p>
				<?php echo $pucem."<b> ".$tab_web[nom]." </b>";?>
			</p>
			
			<p>
				<?php echo "<span style='color:#444'>".$tab_web[descr]."</span><br/>";?>
			
			</p><br/>
			<p>
				 <?php echo $pucem."<b> Type </b> : <span>[ ".$tab_web[type]." ]</span>";?>
			</p>
			<p>
				 <?php echo $pucem."<b> Technologie utilisée </b> : <span>[ ".$tab_web[techno]." ]</span>";?>
			</p>
		
			<br/>
				
		
			</div>
		
			 <div class='imgt'><a href='pics/works/<?php echo $urlpic."' rel='$relpic' title='".$tab_web[nom]."'>";?><img id='pic<?php echo $tab_web[id];?>' onmouseover="rollover('pic<?php echo $tab_web[id];?>')" onmousedown="rollout('pic<?php echo $tab_web[id];?>')" onmouseout="rollout('pic<?php echo $tab_web[id];?>')" src='<?php echo "pics/works/".$tab_web[photo];?>' alt=''/></a></div>
			
			</div>
		
	<?php
		// test si plusieurs URL (multi photos lightbox)
		for ( $i=3;$i<=5;$i++){
			
				if (!empty($tab_web[url.$i])) 
					{
						// si url n'est pas vide on integre au lightbox correspondant
						echo "<p style='display:none;'><a href='pics/works/".$tab_web[url.$i]."' rel='lightbox[".$tab_web[id]."]' title='".$tab_web[nom]."'></a> </p>";
					}
				
			}
	
	
	}
		
	?>
	

