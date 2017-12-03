<?php
/* Assainissement de la variable $p qui permet de minimiser les risques éventuels d'injections
*/
$p=$_GET['rub'];
$p=htmlentities($p);
$p=strip_tags($p);
$p=addslashes($p);


$pagetitre = array(
                'home' => 'Dernières réalisations et actualités',
                'rea' => 'Réalisations Web, Print et Offline',
                'contact' => 'Contactez moi',
                'services' => 'Services et Compétences'

        );

  if ( (isset($pagetitre[$p])) ) {
        $titre=$pagetitre[$p];
  } else {
        $titre=$pagetitre['home'];
  }

  // VARIABLES
  $chemin_serveur = 'http://local.styleoweb.fr/';
?>


<head>
<title>TEST - Création site internet Pontarlier Doubs Franche-Comté [ • <?php echo $titre;?> • ] </title>

		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


		<style type="text/css"> @import url(<?=$chemin_serveur?>style.css);</style>
		<style type="text/css"> @import url(<?=$chemin_serveur?>lightbox.css);</style>
		<meta name="description" content="StyleOWeb - Jonathan Escaravage Webdesigner Intégrateur Web xHtml Css Freelance Pontarlier Franche Comté - Conception et Développement Multimédia" />
		<meta name="keywords" content="Web, internet, freelance, intégrateur, xhtml, css, portfolio, book, webdesign, webdesigner, animation flash, logos, multimédia, site internet, design graphique, print, flyers, développement, flash, photoshop, fireworks, actionscript, pontarlier, franche comté, suisse" />
		<meta name="author" content="Jonathan Escaravage" />
		<meta name="copyright" content="© Jonathan Escaravage" />
		<link rel="shortcut icon" href="pics/favicon.ico" />
		<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="http://www.styleoweb.fr/flux.xml" />
		<script type="text/javascript" src="js/forms.js"></script>
		<script type="text/javascript" src="js/prototype.js"></script>
		<script type="text/javascript" src="js/scriptaculous.js?load=effects,builder"></script>
		<script type="text/javascript" src="js/lightbox.js"></script>
		<script type="text/javascript" src="js/functions.js"></script>

		<!-- stats -->
		<script type="text/javascript">

  		var _gaq = _gaq || [];
 		 _gaq.push(['_setAccount', 'UA-20516244-1']);
  		_gaq.push(['_trackPageview']);

  		(function() {
   			var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
   			ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    		var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  		})();

		</script>

</head>
<body>
	<!-- ENTETE DE PAGE -->
		<div style='background-color:#333;'>
			<a style='display:block;' href='<?=$chemin_serveur?>webmaster-integrateur-pontarlier.php'>
				<span id='bloc-titre'></span>
			</a>
		</div>
		<!-- ancre pour haut de page -->
		<a name='top-web'></a>
		<?php
			// on intègre le menu au document
			include ('inc/menu.php');

			// on intègre le fichier de variable d'affichage
			include ('inc/var-include.php');

			// on enleve l'affichage des warning php
			error_reporting(0);

			// on affiche toutes les erreurs php
			//error_reporting(E_ALL);

			// on inclue le compteur de visites
			include('inc/visits.php');
		?>
