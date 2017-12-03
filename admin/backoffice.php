<?php session_start();

	// AJOUTER 
	
	// Formulaire d'ajout
	
	if( isset($_GET['form']) && $_GET['form'] == 'ok'){

	// on récupère les données du formulaire
	$date = $_POST['date'];
	$cat = 	$_POST['cat'];
	$nom =	stripslashes($_POST['nom']);
	$online =	$_POST['online'];
	$pos =	$_POST['pos'];
	$desc =	stripslashes($_POST['desc']);
	$type =	strtoupper($_POST['type']);
	
	// Boucle pour récupérer les checks
	
	$tech = $_POST['tech'];
	$ntech = count($tech);
	$ni = 0;
	$techuse ='';
	foreach ($tech as $cle) {
		$ni=$ni+1;
		$techuse = $techuse.' '.$cle.' ';
		if($ni < $ntech) $techuse = $techuse.'/ '; 
	}
	//
	$url = 	$_POST['url'];
	$url2 = $_POST['url2'];
	$url3 = $_POST['url3'];
	$url4 = $_POST['url5'];
	$url5 = $_POST['url5'];
	$photo = $_POST['photo'];
	
	// AJOUT DES DONNEES DANS LA BASE
	
	$add_ref = "INSERT INTO sw_refs (online,status,cat,nom,date,descr, type, techno, url, url2, url3, url4, url5, photo) "." VALUES ('$online', '$pos', '$cat', '$nom', '$date', '$desc', '$type', '$techuse', '$url', '$url2', '$url3', '$url4', '$url5', '$photo')";
	
	$exadd = mysql_query($add_ref) or die ('Erreur SQL ! : '.$add_ref);
	
	
	echo "<br/><br/>Les données on été enregistrées.<br/><a href='index.php'>Retour Accueil</a>";
	

	}else{

	if( $_GET['act'] == 'add'){
?>

	
	<form method='Post' action="index.php?f=admin&form=ok">
		<table id='add'>
			<tr>	
				<td>Date :</td><td><input type="text" name='date' value='<?php echo date('Y').'.'.date('m') .'.'.date('d');?>'/></td>
			</tr>
			<tr>	
				<td>Catégorie :</td><td>
					<select name="cat" size="1"> 
					
					<option value="web"> Web 
					<option value="print"> Print
					<option value="offline"> Offline
					
					</select>
				</td>
			</tr>
			<tr>	
				<td>Nom :</td><td><input type="text" name='nom' value='' size='60'/>  </td>
			</tr>
			<tr>	
				<td>Online :</td><td><input type='text' name='online' value='0' size='5'/> (0:non 1:oui)</td>
			</tr>
			<tr>	
				<td>Position :</td><td><input type='text' name='pos' value='1' size='5'/> (2:MISE EN AVANT 1:ACTUEL 0:ANCIEN)</td>
			</tr>
			<tr>	
				<td>Description :</td><td><textarea name="desc" cols="100" rows="10"/></textarea></td>
			</tr>
			<tr>	
				<td>Type :</td><td><input type="text" name='type' value='' size='30'/> AFFICHE, SITES WEB FLASH HTML, APPLICATION CD ROM ...</td>
			</tr>
			<tr>	
				<td>Technologie utilisée :</td><td>
				<input type="checkbox" name="tech[]" value="Flash"/> Flash
				<input type="checkbox" name="tech[]" value="Photoshop"/> Photoshop
				<input type="checkbox" name="tech[]" value="Fireworks"/> Fireworks
				<input type="checkbox" name="tech[]" value="Illustrator"/> Illustrator
				<input type="checkbox" name="tech[]" value="xHtml"/> xHtml
				<input type="checkbox" name="tech[]" value="Css"/> Css
				<input type="checkbox" name="tech[]" value="Php"/> Php
				<input type="checkbox" name="tech[]" value="MySql"/> MySql
				<input type="checkbox" name="tech[]" value="ActionScript"/> ActionScript
				</td>
			</tr>
			<tr>	
				<td>Url :</td><td><input type="text" name='url' value=''size='40'/></td>
			</tr>
			<tr>	
				<td>Url 2 :</td><td><input type="text" name='url2' value='pics/works/'size='40'/></td>
			</tr>
			<tr>	
				<td>Url 3 :</td><td><input type="text" name='url3' value='pics/works/'size='40'/></td>
			</tr>
			<tr>	
				<td>Url 4 :</td><td><input type="text" name='url4' value='pics/works/'size='40'/></td>
			</tr>
			<tr>	
				<td>Url 5 :</td><td><input type="text" name='url5' value='pics/works/'size='40'/></td>
			</tr>
			<tr>	
				<td>Photo :</td><td><input type="text" name='photo' value='' size='40'></td>
			</tr>
			<tr>	
				<td class='bvalid' ></td><td class='bvalid'><input type=submit value="Valider"></td>
			</tr>	
	
		</table>
	</form>	
<?php
    	}	

	}





	// MODIFIER
	
	// affichage des données présentes dans la table sw_refs
	
	// SUPPRIMER
?>
