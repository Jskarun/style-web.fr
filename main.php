<?php //header('Location: indexm.html');?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">

<?php include('inc/header.php'); ?>

	<table cellspacing="0" width="100%">
		<tr>
		<td id='coteD'></td>
			<td>
				<div id='main'>
<?php 
				// Selection de la rubrique 
				//si variable existe on l'utilise pour switcher entre les rubriques
				if (isset($_GET['rub'])){
					$rubrique = $_GET['rub'];
					switch ($rubrique) {
						case 'rea':
    					include ('rub/realisations.php');
    					break;
						case 'contact':
   				 		include ('rub/contact.php');
    					break;
						case 'services':
    					include ('rub/services.php');
    					break;
    					case 'home':
    					include ('rub/home.php');
    					break;
    					case 'legales':
    					include ('rub/legales.php');
    					break;
					}
				}
				else{
					//( par defaut = realisations ou dernieres realisations)
						include ('rub/home.php');
				}
?>
 
				<br/><br/>
				<img src='pics/ban-bas.jpg' alt=''/>	
				</div>
								
				<?php include ('inc/footer.php'); ?>
			
			</td>
			
		<td id='coteG'></td>
		
		</tr>
	</table>
	</body>
</html>