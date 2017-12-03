<?php 
		
	// on récupère la version de la bio pour background du lien en cours
	if ( isset($_GET['v']) ) {
		$version = $_GET['v'];
		if ($version == 'fr') {
			$idvfr = 'a_on';
			$idven = 'a_off';
		}
		if ($version == 'en'){
			$idven = 'a_on';
			$idvfr = 'a_off';
		} 
	}else {
	// par défaut on active l'onglet Version fr
		$idvfr = 'a_on';
		$idven = 'a_off';
	}
	//
	


?> 
	<div id='ssmenu'> 
		<ul>
			<li><a class='<?php echo $idvfr;?>' href='content.php?pg=bio&amp;v=fr'>Version Française</a></li>
			<li><a class='<?php echo $idven;?>' href='content.php?pg=bio&amp;v=en'>English Version</a></li>
		</ul>	
	</div>
	<div id='bloc-bio'>
		<div id='text'>
			<?php if(isset($_GET['v']) && $_GET['v']=='en'){?>	
			<p>	
			After obtaining Baccalauréat section S in France, Amanda followed law courses at the Faculty Schumann in Strasbourg. and completed it by a degree in "Marketing and Communication".

	
			</p>
			<p>
			A few months later, she was noticed by a modeling agency in Lille. She then decided to embrace a fashion career.


			</p>
			<p>
			She rapidly moved to Paris because of the importance of the fashion activity and the numerous exhibitions. Soon after she was hired by other agencies and had the opportunity to participate to many Défilés for well-known designers.


			</p>
			<p>
				In parallel, being strongly attracted by the movie industry, she decided to enroll in "Cours Florent" in Paris, a famous acting school for movies and theater, and was selected  for Open Class.

She is now more and more involved into acting and eager to impress, devoting herself to her acting career.

She has been credited for her following performances:

- "beauty"  videos
- A clip for the Hotel Le Meurice
-  The feature  role in the short film "KEROZENE"  directed by Joachim Weissman in Belgium.
-  A role in a film "Les tribulations d'une caissière"  by Pierre Rambaldi

and is preparing other  film projects currently under development.	
			</p>
			<?php }else {?>	
			<p>	
				Après avoir obtenu un Bac S, <b>Amandine</b> se destine à faire du droit à la faculté R.Schumann à Strasbourg. <br/>Finalement, elle change d'orientation et obtient une licence en "Marketing-Communication".
			</p>
			<p>
				Quelques mois plus tard, elle se fait remarquer par une agence de mannequins sur Lille. 
				Elle change à nouveau de cap et décide de se diriger vers la Mode.
			</p>
			<p>
				Elle s'installe à Paris car les manifestations sont nombreuses dans la Capitale. 
				Très vite, elle est engagée par d'autres agences et défile pour de nombreux créateurs.
			</p>
			<p>
				Cependant, fascinée depuis fort longtemps par le domaine de l'Art, elle s'inscrit au <b>cours Florent</b> et passe le concours de la Classe Libre.
				Rapidement, elle est attirée par le Cinéma et impressionnée par le  jeu de l'ACTEUR. Elle projette donc de devenir comédienne et se consacre désormais à sa carrière d'actrice.
				A son actif : des vidéos "beauté", un clip pour l'hôtel  <b>LE MEURICE</b>, le rôle principal dans un court-métrage <b>"KEROSENE"</b>de Joachim Weissman, un petit rôle dans un long métrage "Les tribulations d'une caissière" de <b>Pierre Rambaldi</b> et en perspective de nombreux projets cinématographiques dans des courts-métrages et longs-métrages.
			</p>
			
			<?php } ?>
		</div>
	</div>
	
