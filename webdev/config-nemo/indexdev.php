<?php session_start(); ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	
		<?php include('inc/header.php'); ?>
	
	<!-- positionnement du bloc mobile de prix -->
	
	<div id='prix-mobile' class="prix-mobile"></div>
		
	<!-- variable de renseignement pour le statut d'affichage JS -->
	<span style='display:none;' id='status-prix'>false</span>
	
	<!-- Corps de page-->
	<table cellspacing='0' style='width:100%;'>
		<tr>
			<td id="coteG"></td>
	
	<td style='width:1000px;'>
	<div id="bloc-central">
	
	<?php
	// si la config est choisie ou affiche le tableau d'options du configurateur
	if( isset($_GET[num_conf])){
	
	// recherche de la config et des options dans la base
	
	$select_conf = "SELECT * FROM configs WHERE id=".$_GET[num_conf];
	$query_conf = mysql_query($select_conf) or die ('Erreur SQL ! :'.$select_conf);
	$tab_sel_conf = mysql_fetch_array($query_conf);
	
	$config_choisie = $tab_sel_conf[nom];
	$maj_config = $tab_sel_conf[date_mod];
	?>
	
	<a href='index.php'><img class="photo-select" src="img/<?php echo $tab_sel_conf[photo];?>" border="0"  alt="Vous avez choisie la configuration <?php echo $config_choisie;?> cliquez ici pour retourner au choix du BTO" /></a>
	
	
	<div class="bloc-options">
	
	<p class="guide"><img src='pics/puce.jpg' alt='' border='0'/> <span><?php echo "Vous avez choisi la config <b>".$config_choisie."</b>";?></span> <i> ( maj. <?php echo $maj_config; ?> )</i><br/><br/> Veuillez selectionner les options<sup>1</sup> ci-dessous que vous souhaitez ajouter à cette configuration.<br/> Le prix d'achat est affiché en bas de page et vous permet de calculer le prix total en fonction des options que vous ajoutez.<br/><br/>Une fois la configuration terminée, cliquez sur "Imprimer" en bas de page pour imprimer un devis pour votre client, <br/>ou cliquez sur "Envoyer" pour nous faire parvenir ce devis par mail.<br/><sup>1</sup> Les prix TTC de chaque éléments sont visibles à titre indicatif (arrondi au centième)</p><br/><br/>
	
	<!-- OUVERTURE DE LA DIV D'IMPRESSION -->
	
		<div class='zone-imp'>
	
	
		<?php 
	// ****** Boitier **********************************************************************************************************************************
		if( !empty($tab_sel_conf[boitier])){
		//si la config à bien un boitier on vérifie si un boitier est disponible en option
		
		
		//on cherche dans la base le boitier de la config la moins chere
		$req_boitB = "SELECT photo FROM configs ORDER BY prix ASC LIMIT 1";
		$ex_reqboit = mysql_query($req_boitB)or die ("Erreur SQL : ".$req_boitB);
		$tab_base_boit = mysql_fetch_array($ex_reqboit);
		
		$photo_base =  $tab_base_boit[photo];
		
		// on affecte le nom du boitier de base à une variable
		$base_boitier = $tab_sel_conf[boitier];
				
		//début de bloc famille
		
		echo "<div class='entete-opt'>[<b> Boitier </b>]</div>";
		
		echo "<div class='bloc-famille'>";
			
		
		// requete pour rechercher un boitier dans la table des options
			$rq_boitier = "SELECT * FROM options WHERE id_opt=".$_GET[num_conf]." AND type='boitier'";
			$exrq_boitier = mysql_query($rq_boitier) or die ("Erreur SQL ! :".$rq_boitier);
			
			//req sup pour recherche preliminaire
			$exrqsup_boitier = mysql_query($rq_boitier) or die ("Erreur SQL ! :".$rq_boitier);
			$tab_test_boitier = mysql_fetch_array($exrqsup_boitier);
			//on affiche l'élément de base
			echo "<div class='ligne-element'><input type='radio' checked='checked' onclick='calculprix(0,1)' name='opt_boitier' value='0' class='elem-base' /><span> ".$base_boitier." </span><span class='voir-mini' > - Voir <img style='position:relative;top:4px;' src='pics/eye.jpg' border='0' onmouseover=\"montre('$photo_base',this)\" onmouseout='cache()' /> <div id='curseur' class='infobulle'></div></span></div>";
			if(!empty($tab_test_boitier)){
					
				while ($tab_exrq_boitier = mysql_fetch_array($exrq_boitier)){
					$prix_sup_act = $tab_exrq_boitier[prix];
					echo "<div class='ligne-element'><input type='radio' name='opt_boitier' onclick='calculprix($prix_sup_act,1)' value='".$tab_exrq_boitier[prix]."' /><span> ".$tab_exrq_boitier[element]." <span class='affPht'>[<b> +".$tab_exrq_boitier[prix]."&euro;</b>]</span><span class='affPttc'> [ +".round($tab_exrq_boitier[prix]*1.196,2)."&euro;]</span> </span><span class='voir-mini'>- Voir <img style='position:relative;top:4px;' src='pics/eye.jpg' border='0' onmouseover=\"montre('$tab_exrq_boitier[img]',this)\" onmouseout='cache()' /></span></div>";
				}
			}else{
				echo "<span class='no-options'><br/>Il n'y a pas d'option disponible pour cet élément</span>";
			}
		echo "<img src='pics/familles/boitier.jpg' alt='Votre choix de boitier' border='0' class='img-famille' /></div>";
		}
		
	// ****** CARTE MERE **********************************************************************************************************************************
		if( !empty($tab_sel_conf[cm])){
		//si la config à bien une carte mère on vérifie si une carte mère est disponible en option
		// on affecte la carte mère de base à une variable
		
		$base_cm = $tab_sel_conf[cm];
		
		
		//début de bloc famille
		
		echo "<div class='entete-opt'>[<b> Carte mère </b>]</div>";
		
		echo "<div class='bloc-famille'>";
			
		
		// requete pour rechercher une carte mère dans la table des options
			$rq_cm = "SELECT * FROM options WHERE id_opt=".$_GET[num_conf]." AND type='cm' ORDER BY prix ASC";
			$exrq_cm = mysql_query($rq_cm) or die ("Erreur SQL ! :".$rq_cm);
			
			//req sup pour recherche preliminaire
			$exrqsup_cm = mysql_query($rq_cm) or die ("Erreur SQL ! :".$rq_cm);
			$tab_test_cm = mysql_fetch_array($exrqsup_cm);
			//on affiche l'élément de base
			echo "<div class='ligne-element'><input type='radio' checked='checked' onclick='calculprix(0,2)' name='opt_cm' value='0' class='elem-base' /><span> ".$base_cm." </span></div>";
			if(!empty($tab_test_cm)){
					
				while ($tab_exrq_cm = mysql_fetch_array($exrq_cm)){
					$prix_sup_act = $tab_exrq_cm[prix];
					echo "<div class='ligne-element'><input type='radio' name='opt_cm' onclick='calculprix($prix_sup_act,2)' value='".$tab_exrq_cm[prix]."' /><span> ".$tab_exrq_cm[element]." <span class='affPht'>[<b> +".$tab_exrq_cm[prix]."&euro;</b>]</span><span class='affPttc'> [ +".round($tab_exrq_cm[prix]*1.196,2)."&euro;]</span></span></div>";
				}
			}else{
				echo "<span class='no-options'><br/>Il n'y a pas d'option disponible pour cet élément</span>";
			}
		echo "<img src='pics/familles/cm.jpg' alt='Votre choix de carte mère' border='0' class='img-famille' /></div>";
		}
	// ****** CPU **********************************************************************************************************************************
		if( !empty($tab_sel_conf[cpu])){
		//si la config à bien un cpu on vérifie si un cpu est disponible en option
		// on affecte le cpu de base à une variable
		
		$base_cpu = $tab_sel_conf[cpu];
		
		
		//début de bloc famille
			
		echo "<div class='entete-opt'>[<b> Cpu </b>]</div>";
		
		echo "<div class='bloc-famille'>";
			
		// requete pour rechercher un cpu dans la table des 
			$rq_cpu = "SELECT * FROM options WHERE id_opt=".$_GET[num_conf]." AND type='cpu' ORDER BY prix ASC";
			$exrq_cpu = mysql_query($rq_cpu) or die ("Erreur SQL ! :".$rq_cpu);
			
			//req sup pour recherche preliminaire
			$exrqsup_cpu = mysql_query($rq_cpu) or die ("Erreur SQL ! :".$rq_cpu);
			$tab_test_cpu = mysql_fetch_array($exrqsup_cpu);
			//on affiche l'élément de base
			echo "<div class='ligne-element'><input type='radio' checked='checked' onclick='calculprix(0,3)' name='opt_cpu' value='0' class='elem-base' /><span> ".$base_cpu." </span></div>";
			if(!empty($tab_test_cpu)){
					
				while ($tab_exrq_cpu = mysql_fetch_array($exrq_cpu)){
					$prix_sup_actcpu = $tab_exrq_cpu[prix];
					echo "<div class='ligne-element'><input type='radio' name='opt_cpu' onclick='calculprix($prix_sup_actcpu,3)' value='".$tab_exrq_cpu[prix]."' /><span> ".$tab_exrq_cpu[element]." <span class='affPht'> [<b> +".$tab_exrq_cpu[prix]."&euro;</b>]</span><span class='affPttc'> [ +".round($tab_exrq_cpu[prix]*1.196,2)."&euro;]</span></span></div>";
				}
			}else{
				echo "<span class='no-options'><br/>Il n'y a pas d'option disponible pour cet élément</span>";
			}
		echo "<img src='pics/familles/cpu.jpg' alt='Votre choix de processeur' border='0' class='img-famille' /></div>";
		}
// ****** Memoire **********************************************************************************************************************************

		if( !empty($tab_sel_conf[mem])){
		//si la config à bien un memoire on vérifie si un memoire est disponible en option
		// on affecte le memoire de base à une variable
		
		$base_mem = $tab_sel_conf[mem];
		
		
		//début de bloc famille
		echo "<div class='entete-opt'>[<b> Mémoire </b>]</div>";
		
		echo "<div class='bloc-famille'>";
			
		// requete pour rechercher un mem dans la table des options
			$rq_mem = "SELECT * FROM options WHERE id_opt=".$_GET[num_conf]." AND type='mem' ORDER BY prix ASC";
			$exrq_mem = mysql_query($rq_mem) or die ("Erreur SQL ! :".$rq_mem);
			
			//req sup pour recherche preliminaire
			$exrqsup_mem = mysql_query($rq_mem) or die ("Erreur SQL ! :".$rq_mem);
			$tab_test_mem = mysql_fetch_array($exrqsup_mem);
			//on affiche l'élément de base
			echo "<div class='ligne-element'><input type='radio' checked='checked' onclick='calculprix(0,4)' name='opt_mem' value='0' class='elem-base' /><span> ".$base_mem." </span></div>";
			if(!empty($tab_test_mem)){
					
				while ($tab_exrq_mem = mysql_fetch_array($exrq_mem)){
					$prix_sup_actmem = $tab_exrq_mem[prix];
					echo "<div class='ligne-element'><input type='radio' name='opt_mem' onclick='calculprix($prix_sup_actmem,4)' value='".$tab_exrq_mem[prix]."' /><span> ".$tab_exrq_mem[element]." <span class='affPht'> [<b> +".$tab_exrq_mem[prix]."&euro;</b>]</span><span class='affPttc'> [ +".round($tab_exrq_mem[prix]*1.196,2)."&euro;]</span></span></div>";
				}
			}else{
				echo "<span class='no-options'><br/>Il n'y a pas d'option disponible pour cet élément</span>";
			}
		echo "<img src='pics/familles/mem.jpg' alt='Votre choix de mémoire' border='0' class='img-famille' /></div>";
		}
		
// ****** Disque Dur **********************************************************************************************************************************

		if( !empty($tab_sel_conf[dd])){
		//si la config à bien un dd on vérifie si un dd est disponible en option
		// on affecte le dd de base à une variable
		
		$base_dd = $tab_sel_conf[dd];
		
		
		//début de bloc famille
		echo "<div class='entete-opt'>[<b> Disque Dur </b>]</div>";
		
		echo "<div class='bloc-famille'>";
			
		// requete pour rechercher un dd dans la table des options
			$rq_dd = "SELECT * FROM options WHERE id_opt=".$_GET[num_conf]." AND type='dd' ORDER BY prix ASC";
			$exrq_dd = mysql_query($rq_dd) or die ("Erreur SQL ! :".$rq_dd);
			
			//req sup pour recherche preliminaire
			$exrqsup_dd = mysql_query($rq_dd) or die ("Erreur SQL ! :".$rq_dd);
			$tab_test_dd = mysql_fetch_array($exrqsup_dd);
			//on affiche l'élément de base
			echo "<div class='ligne-element'><input type='radio' checked='checked' onclick='calculprix(0,5)' name='opt_dd' value='0' class='elem-base' /><span> ".$base_dd." </span></div>";
			if(!empty($tab_test_dd)){
					
				while ($tab_exrq_dd = mysql_fetch_array($exrq_dd)){
					$prix_sup_actdd = $tab_exrq_dd[prix];
					echo "<div class='ligne-element'><input type='radio' name='opt_dd' onclick='calculprix($prix_sup_actdd,5)' value='".$tab_exrq_dd[prix]."' /><span> ".$tab_exrq_dd[element]." <span class='affPht'>[<b> +".$tab_exrq_dd[prix]."&euro;</b>]</span><span class='affPttc'> [ +".round($tab_exrq_dd[prix]*1.196,2)."&euro;]</span></span></div>";
				}
			}else{
				echo "<span class='no-options'><br/>Il n'y a pas d'option disponible pour cet élément</span>";
			}
		echo "<img src='pics/familles/dd.jpg' alt='Votre choix de disque dur' border='0' class='img-famille' /></div>";
		}
// ****** Carte graphique **********************************************************************************************************************************

		if( !empty($tab_sel_conf[cg])){
		//si la config à bien un carte graphique on vérifie si un dd est disponible en option
		// on affecte le carte graphique de base à une variable
		
		$base_cg = $tab_sel_conf[cg];
		
		
		//début de bloc famille
		echo "<div class='entete-opt'>[<b> Carte graphique </b>]</div>";
		
		echo "<div class='bloc-famille'>";
			
		// requete pour rechercher un carte graphique dans la table des options
			$rq_cg = "SELECT * FROM options WHERE id_opt=".$_GET[num_conf]." AND type='cg' ORDER BY prix ASC";
			$exrq_cg = mysql_query($rq_cg) or die ("Erreur SQL ! :".$rq_cg);
			
			//req sup pour recherche preliminaire
			$exrqsup_cg = mysql_query($rq_cg) or die ("Erreur SQL ! :".$rq_cg);
			$tab_test_cg = mysql_fetch_array($exrqsup_cg);
			//on affiche l'élément de base
			echo "<div class='ligne-element'><input type='radio' checked='checked' onclick='calculprix(0,6)' name='opt_cg' value='0' class='elem-base' /><span> ".$base_cg." </span></div>";
			if(!empty($tab_test_cg)){
					
				while ($tab_exrq_cg = mysql_fetch_array($exrq_cg)){
					$prix_sup_actcg = $tab_exrq_cg[prix];
					echo "<div class='ligne-element'><input type='radio' name='opt_cg' onclick='calculprix($prix_sup_actcg,6)' value='".$tab_exrq_cg[prix]."' /><span> ".$tab_exrq_cg[element]." <span class='affPht'>[<b> +".$tab_exrq_cg[prix]."&euro;</b>]</span><span class='affPttc'> [ +".round($tab_exrq_cg[prix]*1.196,2)."&euro;]</span></span></div>";
				}
			}else{
				echo "<span class='no-options'><br/>Il n'y a pas d'option disponible pour cet élément</span>";
			}
		echo "<img src='pics/familles/cg.jpg' alt='Votre choix de carte graphique' border='0' class='img-famille' /></div>";
		}
// ****** Lecteur **********************************************************************************************************************************
		if( !empty($tab_sel_conf[lect_disq])){
		//si la config à bien un lecteur disquette on vérifie si un dd est disponible en option
		// on affecte le lecteur disquette de base à une variable
		
		$base_lect_disq = $tab_sel_conf[lect_disq];
		
		
		//début de bloc famille
		echo "<div class='entete-opt'>[<b> Lecteur interne </b>]</div>";
		
		echo "<div class='bloc-famille'>";
			
		// requete pour rechercher un lect_disq dans la table des options
			$rq_lect_disq = "SELECT * FROM options WHERE id_opt=".$_GET[num_conf]." AND type='lect_disq' ORDER BY prix ASC";
			$exrq_lect_disq = mysql_query($rq_lect_disq) or die ("Erreur SQL ! :".$rq_lect_disq);
			
			//req sup pour recherche preliminaire
			$exrqsup_lect_disq = mysql_query($rq_lect_disq) or die ("Erreur SQL ! :".$rq_lect_disq);
			$tab_test_lect_disq = mysql_fetch_array($exrqsup_lect_disq);
			//on affiche l'élément de base
			echo "<div class='ligne-element'><input type='radio' checked='checked' onclick='calculprix(0,7)' name='opt_lect_disq' value='0' class='elem-base' /><span> ".$base_lect_disq." </span></div>";
			if(!empty($tab_test_lect_disq)){
					
				while ($tab_exrq_lect_disq = mysql_fetch_array($exrq_lect_disq)){
					$prix_sup_act_lect_disq = $tab_exrq_lect_disq[prix];
					echo "<div class='ligne-element'><input type='radio' name='opt_lect_disq' onclick='calculprix($prix_sup_act_lect_disq,7)' value='".$tab_exrq_lect_disq[prix]."' /><span> ".$tab_exrq_lect_disq[element]." <span class='affPht'>[<b> +".$tab_exrq_lect_disq[prix]."&euro;</b>]</span><span class='affPttc'> [ +".round($tab_exrq_lect_disq[prix]*1.196,2)."&euro;]</span></span></div>";
				}
			}else{
				echo "<span class='no-options'><br/>Il n'y a pas d'option disponible pour cet élément</span>";
			}
		echo "<img src='pics/familles/lect_disq.jpg' alt='Votre choix de lecteur disquette' border='0' class='img-famille' /></div>";
		}
// ****** Lecteur optique **********************************************************************************************************************************
		if( !empty($tab_sel_conf[lect_opt])){
		//si la config à bien un lecteur opt on vérifie si un lect opt est disponible en option
		// on affecte le lecteur opt de base à une variable
		
		$base_lect_opt = $tab_sel_conf[lect_opt];
		
		
		//début de bloc famille
		echo "<div class='entete-opt'>[<b> Lecteur optique  </b>]</div>";
		
		echo "<div class='bloc-famille'>";
			
		// requete pour rechercher un lect_opt dans la table des options
			$rq_lect_opt = "SELECT * FROM options WHERE id_opt=".$_GET[num_conf]." AND type='lect_opt' ORDER BY prix ASC";
			$exrq_lect_opt = mysql_query($rq_lect_opt) or die ("Erreur SQL ! :".$rq_lect_opt);
			
			//req sup pour recherche preliminaire
			$exrqsup_lect_opt = mysql_query($rq_lect_opt) or die ("Erreur SQL ! :".$rq_lect_opt);
			$tab_test_lect_opt = mysql_fetch_array($exrqsup_lect_opt);
			//on affiche l'élément de base
			echo "<div class='ligne-element'><input type='radio' checked='checked' onclick='calculprix(0,8)' name='opt_lect_opt' value='0' class='elem-base' /><span> ".$base_lect_opt." </span></div>";
			if(!empty($tab_test_lect_opt)){
					
				while ($tab_exrq_lect_opt = mysql_fetch_array($exrq_lect_opt)){
					$prix_sup_act_lect_opt = $tab_exrq_lect_opt[prix];
					echo "<div class='ligne-element'><input type='radio' name='opt_lect_opt' onclick='calculprix($prix_sup_act_lect_opt,8)' value='".$tab_exrq_lect_opt[prix]."' /><span> ".$tab_exrq_lect_opt[element]." <span class='affPht'>[<b> +".$tab_exrq_lect_opt[prix]."&euro;</b>]</span><span class='affPttc'> [ +".round($tab_exrq_lect_opt[prix]*1.196,2)."&euro;]</span></span></div>";
				}
			}else{
				echo "<span class='no-options'><br/>Il n'y a pas d'option disponible pour cet élément</span>";
			}
		echo "<img src='pics/familles/lect_opt.jpg' alt='Votre choix de lecteur optique' border='0' class='img-famille' /></div>";
		}
// ****** Réseau **********************************************************************************************************************************
		if( !empty($tab_sel_conf[res])){
		//si la config à bien un composant réseau on vérifie si un composant est disponible en option
		// on affecte le composant réseau de base à une variable
		
		$base_res = $tab_sel_conf[res];
		
		
		//début de bloc famille
		echo "<div class='entete-opt'>[<b> Réseau </b>]</div>";
		
		echo "<div class='bloc-famille'>";
			
		// requete pour rechercher un cmposant réseau dans la table des options
			$rq_res = "SELECT * FROM options WHERE id_opt=".$_GET[num_conf]." AND type='res' ORDER BY prix ASC";
			$exrq_res = mysql_query($rq_res) or die ("Erreur SQL ! :".$rq_res);
			
			//req sup pour recherche preliminaire
			$exrqsup_res = mysql_query($rq_res) or die ("Erreur SQL ! :".$rq_res);
			$tab_test_res = mysql_fetch_array($exrqsup_res);
			//on affiche l'élément de base
			echo "<div class='ligne-element'><input type='radio' checked='checked' onclick='calculprix(0,9)' name='opt_res' value='0' class='elem-base' /><span> ".$base_res." </span></div>";
			if(!empty($tab_test_res)){
					
				while ($tab_exrq_res = mysql_fetch_array($exrq_res)){
					$prix_sup_act_res = $tab_exrq_res[prix];
					echo "<div class='ligne-element'><input type='radio' name='opt_res' onclick='calculprix($prix_sup_act_res,9)' value='".$tab_exrq_res[prix]."' /><span> ".$tab_exrq_res[element]." <span class='affPht'>[<b> +".$tab_exrq_res[prix]."&euro;</b>]</span><span class='affPttc'> [ +".round($tab_exrq_res[prix]*1.196,2)."&euro;]</span></span></div>";
				}
			}else{
				echo "<span class='no-options'><br/>Il n'y a pas d'option disponible pour cet élément</span>";
			}
		echo "<img src='pics/familles/reseau.jpg' alt='Votre choix de composant réseau' border='0' class='img-famille' /></div>";
		}
// ****** Son **********************************************************************************************************************************
		if( !empty($tab_sel_conf[son])){
		//si la config à bien un composant son on vérifie si un composant est disponible en option
		// on affecte le composant son de base à une variable
		
		$base_son = $tab_sel_conf[son];
		
		
		//début de bloc famille
		echo "<div class='entete-opt'>[<b> Son </b>]</div>";
		
		echo "<div class='bloc-famille'>";
			
		// requete pour rechercher un cmposant son dans la table des options
			$rq_son = "SELECT * FROM options WHERE id_opt=".$_GET[num_conf]." AND type='son' ORDER BY prix ASC";
			$exrq_son = mysql_query($rq_son) or die ("Erreur SQL ! :".$rq_son);
			
			//req sup pour recherche preliminaire
			$exrqsup_son = mysql_query($rq_son) or die ("Erreur SQL ! :".$rq_son);
			$tab_test_son = mysql_fetch_array($exrqsup_son);
			//on affiche l'élément de base
			echo "<div class='ligne-element'><input type='radio' checked='checked' onclick='calculprix(0,10)' name='opt_son' value='0' class='elem-base' /><span> ".$base_son." </span></div>";
			if(!empty($tab_test_son)){
					
				while ($tab_exrq_son = mysql_fetch_array($exrq_son)){
					$prix_sup_act_son = $tab_exrq_son[prix];
					echo "<div class='ligne-element'><input type='radio' name='opt_son' onclick='calculprix($prix_sup_act_son,10)' value='".$tab_exrq_son[prix]."' /><span> ".$tab_exrq_son[element]." <span class='affPht'>[<b> +".$tab_exrq_son[prix]."&euro;</b>]</span><span class='affPttc'> [ +".round($tab_exrq_son[prix]*1.196,2)."&euro;]</span></span></div>";
				}
			}else{
				echo "<span class='no-options'><br/>Il n'y a pas d'option disponible pour cet élément</span>";
			}
		echo "<img src='pics/familles/son.jpg' alt='Votre choix de composant réseau' border='0' class='img-famille' /></div>";
		}
// ****** OS **********************************************************************************************************************************
		if( !empty($tab_sel_conf[os])){
		//si la config à bien un os on vérifie si un composant est disponible en option
		// on affecte l'os de base à une variable
		
		$base_os = $tab_sel_conf[os];
		
		
		//début de bloc famille
		echo "<div class='entete-opt'>[<b> OS </b>]</div>";
		
		echo "<div class='bloc-famille'>";
			
		// requete pour rechercher un os  dans la table des options
			$rq_os = "SELECT * FROM options WHERE id_opt=".$_GET[num_conf]." AND type='os' ORDER BY prix ASC";
			$exrq_os = mysql_query($rq_os) or die ("Erreur SQL ! :".$rq_os);
			
			//req sup pour recherche preliminaire
			$exrqsup_os = mysql_query($rq_os) or die ("Erreur SQL ! :".$rq_os);
			$tab_test_os = mysql_fetch_array($exrqsup_os);
			//on affiche l'élément de base
			echo "<div class='ligne-element'><input type='radio' checked='checked' onclick='calculprix(0,11)' name='opt_os' value='0' class='elem-base'/><span> ".$base_os." </span></div>";
			if(!empty($tab_test_os)){
					
				while ($tab_exrq_os = mysql_fetch_array($exrq_os)){
					$prix_sup_act_os = $tab_exrq_os[prix];
					echo "<div class='ligne-element'><input type='radio' name='opt_os' onclick='calculprix($prix_sup_act_os,11)' value='".$tab_exrq_os[prix]."' /><span> ".$tab_exrq_os[element]." <span class='affPht'>[<b> +".$tab_exrq_os[prix]."&euro;</b>]</span><span class='affPttc'> [ +".round($tab_exrq_os[prix]*1.196,2)."&euro;]</span></span></div>";
				}
			}else{
				echo "<span class='no-options'><br/>Il n'y a pas d'option disponible pour cet élément</span>";
			}
		echo "<img src='pics/familles/os.jpg' alt='Votre choix de composant réseau' border='0' class='img-famille' /></div>";
		}
// ****** Complément **********************************************************************************************************************************
		if( !empty($tab_sel_conf[compl])){
		//si la config à bien un complément on vérifie si un composant est disponible en option
		// on affecte le complément de base à une variable
		
		$base_compl = $tab_sel_conf[compl];
		
		
		//début de bloc famille
		echo "<div class='entete-opt'>[<b> Complément  </b>]</div>";
		
		echo "<div class='bloc-famille'>";
			
		// requete pour rechercher un complément  dans la table des options
			$rq_compl = "SELECT * FROM options WHERE id_opt=".$_GET[num_conf]." AND type='compl' ORDER BY prix ASC";
			$exrq_compl = mysql_query($rq_compl) or die ("Erreur SQL ! :".$rq_compl);
			
			//req sup pour recherche preliminaire
			$exrqsup_compl = mysql_query($rq_compl) or die ("Erreur SQL ! :".$rq_compl);
			$tab_test_compl = mysql_fetch_array($exrqsup_compl);
			//on affiche l'élément de base
			echo "<div class='ligne-element'> <img src='http://www.nemo-fr.com/medias-nemo/images/checked.jpg' alt='' style='position:relative;top:2px;' border='0' /><span> ".$base_compl." </span></div>";
			if(!empty($tab_test_compl)){
					
				while ($tab_exrq_compl = mysql_fetch_array($exrq_compl)){
					$prix_sup_act_compl = $tab_exrq_compl[prix];
					echo "<div class='ligne-element'><input type='checkbox' onclick='calculajprix($prix_sup_act_compl,this)' value='".$tab_exrq_compl[prix]."' /><span><span> ".$tab_exrq_compl[element]." </span><span class='affPht'>[<b> +".$tab_exrq_compl[prix]."&euro;</b>]</span><span class='affPttc'> [ +".round($tab_exrq_compl[prix]*1.196,2)."&euro;]</span></span></div>";
				}
			}else{
				echo "<span class='no-options'><br/>Il n'y a pas d'option disponible pour cet élément</span>";
			}
		//echo "<p style='font-style:italic;width:480px;margin-top:15px;color:#666;'><b>*</b> : l'option <b>«".$base_compl."»</b> est valable même si vous choisissez une autre option de la liste</p>";
		echo "<br/><br/>";
		echo"<img src='pics/familles/compl.jpg' alt='Votre choix de composant réseau' border='0' class='img-famille' /><br/></div>";
		}

	

	//********************************* FIN DE RECHERCHE DES ELEMENTS **************************************


		
		?>
		
		</div>
			<!-- FERMETURE DE LA DIV SERVANT A L'IMPRESSION -->	
			
			<?php // on affecte le prix à une var pour l'utiliser facilement
			$prixtotHT = $tab_sel_conf[prix]; ?>
			
			<p id='lien-refresh' onmouseover="this.style.cursor='pointer'" onclick="refresh(<?php echo $prixtotHT;?>,13)"><img src='pics/puce-haut.jpg' alt="" border="0"/> Retour à la configuration par défaut </p>
		<br/><br/><br/>
		<p id="affmask" onclick="masqueRev()" onmouseover="this.style.cursor='pointer'" style="float:right;width:120px;margin-left:20px;background-color:#fff;"> <img src='pics/bout-dev-revendeur.jpg' alt='Cliquez ici pour changer le mode du devis' border='0'/>  </p>
			
			<span id='prix1-temp' style="display:none;"></span>
			<span id='prix2-temp' style="display:none;"></span>
			<span id='prix3-temp' style="display:none;"></span>
			<span id='prix4-temp' style="display:none;"></span>
			<span id='prix5-temp' style="display:none;"></span>
			<span id='prix6-temp' style="display:none;"></span>
			<span id='prix7-temp' style="display:none;"></span>
			<span id='prix8-temp' style="display:none;"></span>
			<span id='prix9-temp' style="display:none;"></span>
			<span id='prix10-temp' style="display:none;"></span>
			<span id='prix11-temp' style="display:none;"></span>
			<span id='prix12-temp' style="display:none;"></span>
			<span id='prix13-temp' style="display:none;"></span>
			<span id='famille-temp' style="display:none;"></span> 
			
			<div class='pied-prix'>
			
			
				<span class="zone-imp"><!-- ZONE D'impression --> 
					
					<span id="display-prix"> Votre prix d'achat est de : <span id="prix-var"><?php echo $tab_sel_conf[prix];?></span><b>&euro;</b> HT</span>
				</span>
				<!-- fin ZONE D'impression -->
				
				<span id='maskmarg'>Votre marge (%) : <input type='text' id='marge' name='marge' value='' size='3' onkeyup="calculpp(this.value)" /></span> 
				 
				<div class="zone-imp"><!-- ZONE D'impression --> 
				
				<div style='border-color:#bbb;border-style:solid;border-width:1px 0px 0px 0px;margin:10px 0px 3px 0px;'/></div>
					Prix Public TTC : <span id="prix-marge"><b><?php echo round(($tab_sel_conf[prix])*1.196,2);?>&euro;</b></span>  
				</div> 
				<!-- fin ZONE D'impression -->
			
			</div>
			
			<?php 
			// on cherche les caracteres spéciaux dans la chaine du nom de config pour éviter un conflit en javascript
			$config_choisie = Addslashes($config_choisie);
			 
			
			?>
			
			<div style="text-align:right;margin-top:35px;">
				<img src="pics/bout-envoyer.jpg" alt="Nous envoyer ce devis par email" border="0" onmouseover="this.style.cursor='pointer'" onclick="AffBoutcoche('<?php echo date('d').'/'.date('m').'/'.date('Y');?>','mail','<?php echo $config_choisie; ?>', <?php echo $prixtotHT; ?>)" />
				
				<img src="pics/bout-imprimer.jpg" alt="Imprimer ce devis pour un client" border="0" onmouseover="this.style.cursor='pointer'" onclick="AffBoutcoche('<?php echo date('d').'/'.date('m').'/'.date('Y');?>','print','<?php echo $config_choisie; ?>',<?php echo $prixtotHT; ?>)" />
			</div>
			
			<br/><br/><br/>
	
	</div>
	
	<?php
	
	}else{ 
	
	// sinon on affiche les configurations disponibles dans la base 
	$rech_conf = "SELECT * FROM configs WHERE valid=1 ORDER BY id DESC";
	$exe_conf = mysql_query($rech_conf) or die ('Erreur SQL !'.$rech_conf);
	$compt=1;

	?>
		<div class='blocs'> 
	<table width='100%' cellspacing='0' cellpadding='0' ><tr>
	<?php
	
	while($tab_conf = mysql_fetch_array($exe_conf)){?>
		<!-- mise en forme des blocs d'affichage -->
		
		<td><span class="bloc-config">
		
				
				<span class="nom"><img src='pics/puce.jpg' alt='' border='0'/> <?php echo $tab_conf[nom];?></span><br/><br/>
				<span class="caract"><?php echo $tab_conf[cpu];?></span><br/>
				<span class="caract"><?php echo $tab_conf[cg];?></span><br/>
				<span class="caract"><?php echo $tab_conf[os];?></span><br/><br/>
				à partir de <span class="prix"><?php echo $tab_conf[prix];?>&euro; HT</span><br/>

				<a class="lien-bloc" href="index.php?num_conf=<?php echo $tab_conf[id];?>" onmouseover="opacity('<?php echo"idDiv".$compt;?>', 0, 100, 200)" onmouseout="opacity('<?php echo"idDiv".$compt;?>', 100, 0, 200)">
				<img class="photo" src="img/<?php echo $tab_conf[photo];?>" border="0" alt="Accéder à la configuration <?php echo $tab_conf[nom];?>" />
				</a><br/>
				
				<div style="text-align:center;min-height:1px;margin-top:2px;-moz-opacity: 0; filter: alpha(opacity=0); opacity:0" id='<?php echo "idDiv".$compt;?>' > <img src="pics/fleche-go.jpg" alt="Accédez à cette configuration" border="0"/> <br/><b style="color:#777;">Accéder à cette configuration</b> </div>
			
		<?php $compt++;?>
		</span></td>
		
	<?php
		}
	
	
	?>
	</tr></table>
	</div>
	<div style='clear:both;font-size:10px;color:#BBB;margin-top:25px;'>Nemo Grossiste informatique | 15 rue Marcel Dassault | 44980 Ste Luce sur Loire</div>	 
	
	<?php
	}
	
	?>
	
	<hr style="clear:both;border:#EEE 1px solid;" />
	<?php include('inc/pied.php');?>
	</div>
			</td>
		<td id="coteD"></td>
	</tr>
	</table>
	<!-- FIN corps de page -->
	
	</body>
</html>