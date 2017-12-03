<?php session_start();
// REQUETES DES STATS	

	// visites 
	$req_stat = "SELECT * FROM stats ORDER BY id DESC";
	$res_stat = mysql_query($req_stat) or DIE ('Erreur de requête :'.$req_stat);
	$nb_visits = mysql_num_rows ($res_stat);
	
	// visiteurs
	$req_stat_d = "SELECT DISTINCT ip FROM stats ORDER BY id DESC";
	$res_stat_d = mysql_query($req_stat_d) or DIE ('Erreur de requête :'.$req_stat_d);
	$nb_visits_d = mysql_num_rows ($res_stat_d);
	
// AFFICHAGE DES STATS	
	echo "[ <span style='color:#445544;font-weight:bold;font-size:14px;'>".$nb_visits." VISITES</span> ]";
	echo "[ <span style='color:#771144;font-weight:bold;font-size:14px;'>".$nb_visits_d." VISITEURS</span> ] <br/><br/>";
	echo "<table class='table-stats'><tr><td class='top-table'><b>Date</b></td><td class='top-table'><b>IP Visiteur</b></td></tr>";
	
	$n=0;
	
	while ($ext_stat = mysql_fetch_assoc($res_stat)){
	
	echo "<tr><td>".$ext_stat['date']."</td><td>".$ext_stat['ip']."</td></tr>";
	$n = $n+1;
	// si le nombre de lignes est de 20
	if( $n % 20 == 0){
		// on change d'affichage 
		// on remet $n à 0;
		echo "</table>";
		echo "<table class='table-stats'><tr><td class='top-table'><b>Date</b></td><td class='top-table'><b>IP Visiteur</b></td></tr>";
		$n=0;
	}
	
	}
	
	echo "</table>";
	
?>