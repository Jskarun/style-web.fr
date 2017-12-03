//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$


		function changeOpac(opacity, id) {
    		var object = document.getElementById(id);
    		object.style.opacity = (opacity / 100);
    		object.style.MozOpacity = (opacity / 100);
    		object.style.KhtmlOpacity = (opacity / 100);
    		object.filter = "alpha(opacity=" + opacity + ")";
    		object.style.filter="progid:DXImageTransform.Microsoft.Alpha(opacity="+ opacity + ");";
    	}
		
		function opacity(id, opacStart, opacEnd, millisec) {
    	
    	
    	
    	var speed = Math.round(millisec / 100);
    	var timer = 0;
		
		
		if(opacStart > opacEnd) {
			for(i = opacStart; i >= opacEnd; i--) {
            	setTimeout("changeOpac(" + i + ",'" + id + "')",(timer * speed));
            	timer++;
        	}
		} else if(opacStart < opacEnd) {
				for(i = opacStart; i <= opacEnd; i++) {
            		setTimeout("changeOpac(" + i + ",'" + id + "')",(timer * speed));
            		timer++;
        		}
			}
		
		
		}
		
		
//*************************************************************************************************************************************************				
		function calculprix(value,famille){
		
			
			//apparition du bloc de prix mobile
			if(document.getElementById('status-prix').innerHTML == 'false'){
				opacity('prix-mobile', 0, 100, 500);
				document.getElementById('status-prix').innerHTML = 'true'
			}
			if( document.getElementById('famille-temp').innerHTML != "")
				var famTemp = document.getElementById('famille-temp').innerHTML;
			else
				var famTemp = 0;
		
			document.getElementById('famille-temp').innerHTML = famille;
			
			if(famille == 1) idPrix='prix1-temp';
			if(famille == 2) idPrix='prix2-temp';
			if(famille == 3) idPrix='prix3-temp';
			if(famille == 4) idPrix='prix4-temp';
			if(famille == 5) idPrix='prix5-temp';
			if(famille == 6) idPrix='prix6-temp';
			if(famille == 7) idPrix='prix7-temp';
			if(famille == 8) idPrix='prix8-temp';
			if(famille == 9) idPrix='prix9-temp';
			if(famille == 10) idPrix='prix10-temp';
			if(famille == 11) idPrix='prix11-temp';
			if(famille == 12) idPrix='prix12-temp';
			if(famille == 13) idPrix='prix13-temp';
			
			
			if( document.getElementById(idPrix).innerHTML != "")
				var Prixtemp = document.getElementById(idPrix).innerHTML;
			else
				var Prixtemp = 0;
				
			document.getElementById(idPrix).innerHTML = value;
			
						
			var Price = document.getElementById('prix-var').innerHTML;
			var PriceHT = parseFloat(Price) + parseFloat(value);
			
			if(	famTemp == famille ){
					document.getElementById('prix-var').innerHTML = parseFloat(PriceHT) - parseFloat(Prixtemp);
			}else{
				if (Prixtemp != "")
					document.getElementById('prix-var').innerHTML = parseFloat(PriceHT)- parseFloat(Prixtemp);
				else
					document.getElementById('prix-var').innerHTML = parseFloat(PriceHT);
			}
			
			var margeAct = document.getElementById('marge').value;
			
			calculpp(margeAct);	
			
						
								
		}
//*****************************************************************************************************************************		
		
		function calculajprix(valeur,obj){
			
			if(obj.checked == true){
				//on ajoute la valeur de la checkbox au prix global
				var Price = document.getElementById('prix-var').innerHTML;
				var PriceHT = parseFloat(Price) + parseFloat(valeur);
				document.getElementById('prix-var').innerHTML = parseFloat(PriceHT);
				
				var margeAct = document.getElementById('marge').value;
				calculpp(margeAct);
			}
			
			if(obj.checked == false){
				//on retire la valeur de la checkbox au prix global
				var Price = document.getElementById('prix-var').innerHTML;
				var PriceHT = parseFloat(Price) - parseFloat(valeur);
				PriceHT = PriceHT.toFixed(2);
				document.getElementById('prix-var').innerHTML = parseFloat(PriceHT);
				
				var margeAct = document.getElementById('marge').value;
				calculpp(margeAct);
			}
			
			
		
		}
				
//*************************************************************************************************************************************************						
		function calculpp(marge){
		
			//on recalcule les prix des plus values avec la marge pour l'affichage
			// on cherche toutes les balises contenant le prix des plus value ttc
			var spanttc = document.getElementsByTagName('span');
     		
     			for(var i=0; i<spanttc.length; i++){
         			if(spanttc[i].className == 'affPttc'){
         				
         				var valeurbase = spanttc[i].parentNode.parentNode.firstChild.value;
         				if(marge != "" && parseInt(marge) < 100){
         					
         					var pltemp1 = 100 - parseInt(marge);
							var pltemp2 = parseInt(pltemp1) / 100;       					
         					var newpluval = (parseFloat(valeurbase) / parseFloat(pltemp2));
         				}         				
         				
         				else
         					var newpluval = parseFloat(valeurbase);
         					
         				var newpluvalTVA = newpluval*1.196;
         				spanttc[i].innerHTML = ' [ +'+newpluvalTVA.toFixed(2)+'€]';
         					
         			}
               	}
			
			var prix = document.getElementById('prix-var').innerHTML;
			var Prixttc = parseFloat(prix)*1.196;
			
			if(marge != "" && parseInt(marge) < 100){
			
				var temp1 = 100 - parseInt(marge);
				var temp2 = parseInt(temp1) / 100;
				Prixmarge = (Prixttc/parseFloat(temp2));
				Prixmarge = Prixmarge.toFixed(2);
							
			}else{
				if (parseInt(marge) > 99) 
				{
					alert('Valeur non autorisée');
					var Prixmarge = Prixttc.toFixed(2);
					
				}else{
					var Prixmarge = Prixttc.toFixed(2);  
				}
			}
			
			document.getElementById('prix-marge').innerHTML = '<b>'+Prixmarge+'&euro;</b>';
			document.getElementById('prix-mobile').innerHTML = "Prix de vente : <br/><img src='pics/puce.jpg' alt='' border='0'/> <b>"+Prixmarge+"</b>&euro; TTC";

			
		}
		
		
		
		
//*************************************************************************************************************************************************				
		var affiche = true;
		
		function masqueRev(){
		
				
				 if( affiche == true){ 
					affiche = false;
					document.getElementById('display-prix').style.display = 'none';
					document.getElementById('maskmarg').style.display = 'none';
				    MaskClassdeSpan('affPht');
								
					
					document.getElementById('affmask').innerHTML = "<img src='pics/bout-dev-client.jpg' alt='Cliquez ici pour changer le mode du devis' border='0'/>";	
				}else{
					affiche = true;
					document.getElementById('display-prix').style.display = 'inline';
					document.getElementById('maskmarg').style.display = 'inline';
					
					AffClassdeSpan('affPht');
               			
					document.getElementById('affmask').innerHTML = "<img src='pics/bout-dev-revendeur.jpg' alt='Cliquez ici pour changer le mode du devis' border='0'/>";
				}
				
		}

//*************************************************************************************************************************************************		
		function MaskClassdeSpan(classe)
		{
    		var span = document.getElementsByTagName('span');
     		
     			for(var i=0; i<span.length; i++){
         			if(span[i].className == classe)
         				span[i].style.display = 'none';
               	}
		}
//*************************************************************************************************************************************************				
		function AffClassdeSpan(classe)
		{
    		var span = document.getElementsByTagName('span');
     		
     			for(var i=0; i<span.length; i++){
         			if(span[i].className == classe)
         				span[i].style.display = 'inline';
               	}
		}
		
		
//*************************************************************************************************************************************************				
		function AffBoutcoche(date,action,nom,prix)
		{
    		
    		// on recalcule le prix de base de la config + marge si elle existe
			//trace(document.getElementById('marge').value);
			/*if(lamarge != ''){
				var Prixttc = parseFloat(prix)*1.196;
				var temp1 = 100 - parseInt(lamarge);
				var temp2 = parseInt(temp1) / 100;
				var prixdebase = (Prixttc/parseFloat(temp2));
				prixdebase = prixdebase.toFixed(2);
			}*/
    		
    		    		
    		// on teste si l'utilisateur est en mode Revendeur pour envoyer le devis
    		
    		if( (action == 'mail' && affiche == true) || action == 'print' ){
    		
    			var cherche = document.getElementsByTagName('input');
     		
     				for(var i=0; i<cherche.length; i++){
     			
     					if(cherche[i].checked != true){
         					if(cherche[i].id != 'marge'){
         						cherche[i].parentNode.style.display = 'none';
         					}
         				}else
         					{
         						cherche[i].style.display = "none";
         						noeud = cherche[i].parentNode.childNodes[1];
         						//alert(noeud);
         						noeud.style.display = 'block';
         						//noeud.style.width = '480px';
         						noeud.style.height = '14px';
         						noeud.style.border = '1px dotted #CCC';
         						noeud.style.borderWidth = '0px 0px 1px 0px';
         						noeud.style.textAlign = 'right';
         						noeud.style.marginBottom = '10px';
         						noeud.style.marginTop = '-10px';
         					}
         				}
         		   	
         		
       		   	
         		   	
         		// on imprime la zone de devis
         		imprime_zone('Devis Pc monté', 'zone-imp',date,action,nom,prix);
         	}else
         		alert ('Merci de choisir le mode Revendeur pour nous faire parvenir votre devis');
		}

		
//*************************************************************************************************************************************************				
		
		
		function imprime_zone(titre, obj,date,action,nom,prix) 

		{
			
			var divImp = document.getElementsByTagName('div');
			var spanImp = document.getElementsByTagName('span');
			var imgImp = document.getElementsByTagName('img');
			var brImp = document.getElementsByTagName('br');
			
			// Définie la zone à imprimer
			var zi ="<html><body>";
			
			if(action == 'mail'){
				
				zi += "<form name='formmail' method='post' action='http://www.nemo-fr.com/config-nemo/mail_devis.php' >";
			}else{
				zi += "<form name='formmail' method='post' >";
			}
			zi += "<p style='font-size:15px;padding:15px;border:1px dotted #555;background-color:#DDD;'> DEVIS PC MONTE BTO <b>"+nom+"</b></p>Devis du : <b>"+date+"</b><p style='text-align:justify;font-size:10px;font-style:italic;color:#AAA;'></p><u>Elements de la configuration choisie : </u><br/><br/><div style='line-height:20px;'>";			
			
			// on met toutes les photos en display off pour alléger la page d'impression
			for(var k=0; k<imgImp.length; k++){
			
					if(imgImp[k].className == 'img-famille')
         			{	
         				
         				imgImp[k].style.display = 'none';
         				
         			}
         		}
			
			// on recherche et cache la ligne 'sans option'
			var iImp = document.getElementsByTagName('span');
			for(var a=0; a<iImp.length; a++){
			
					if(iImp[a].className == 'no-options')
         			{	
         				
         				iImp[a].style.display = 'none';
         				
         			}
         		}
         		
			// on fait disparaitre tous les sauts de lignes pour un gain de place
			
			for(var i=0; i<brImp.length; i++){
			 				
         				brImp[i].style.display = 'none';
         				
         			
         		}
			
			
			for(var r=0; r<spanImp.length; r++){
			// on masque les liens pour les images en mini (fait avant la recherche des zones à imprimer !!)
         			if(spanImp[r].className == 'voir-mini')
         			{	
         				spanImp[r].style.display = 'none';
         			}  
			
			}
			
			//on cherche toutes les zones 
			for(var i=0; i<divImp.length; i++){
			
			
         			if(divImp[i].className == obj)
         			{	
         				// on ajoute les valeurs html 
         				zi = zi + divImp[i].innerHTML;
         				
         			}
         			
         	}
               	
               	for(var j=0; j<spanImp.length; j++){
			
					if(spanImp[j].className == obj)
         			{	
         				// on ajoute les valeurs html 
         				zi = zi + " | <span style='color:#335599;font-weight:bold;'>"+spanImp[j].innerHTML+"</span>";
         				
         			}
         			
         			    			
         		}
         		
         	
			zi += "</div><div style='border-color:#CCC;border-style:solid;border-width:1px 0px 0px 0px;margin:5px 0px 5px 0px;'/></div>";
			
			// on créé la variable zimail pour l'envoi mail php
			var zimail = zi + "</body></html>";
			
			// Ouvre une nouvelle fenetre
			var f = window.open("", "ZoneImpr","width=650,toolbar=0, menubar=0, scrollbars=1, resizable='1', status=0, location=0, left=150, top=30");

			// Définit le Style de la page
			f.document.body.style.fontSize = "11px";		
				
			f.document.body.style.color = '#000000';
			f.document.body.style.backgroundColor = '#fff';
			f.document.body.style.padding = "10px";

			// Ajoute les données
			f.document.title = titre;
			
			if(action == 'print'){
			f.document.body.innerHTML = " " + zi + "<br/><br/><br/><textarea cols='60' rows='15' style='border-width:0px;background-color:#CCC;font-weight:bold;'></textarea><br/><br/><input type='submit' value='Imprimer ce devis' onclick=\"document.getElementById('fermer').style.display = 'none';this.style.display = 'none';window.print();window.close();\" /><input type='submit' id='fermer' value='Fermer' onclick='window.close()'/></form></body></html>";
				
			}

			if(action == 'mail'){
			f.document.body.innerHTML = " " + zi + "<div><br/><br/><br/><input type='hidden' name='transfert' value='"+escape(zimail)+"' /><input type='submit' value='Envoi ce devis par mail' ><input type='submit' value='Fermer' onclick='window.close()' /></form></body></html>";
			
			}
			
			
			f.window.onbeforeunload = function (){refreshAff()};
			
			
		}

		function Imprime (obj,objmask){
		
			alert(obj);
		}
		
//*************************************************************************************************************************************************		
		
		
		function refresh(prixtotal,nbtampons){
		
		
		var cherche = document.getElementsByTagName('input');
     		
     			for(var i=0; i<cherche.length; i++){
     			
     				
         				if(cherche[i].type == 'radio'){
         					cherche[i].parentNode.style.display = 'block';
         					cherche[i].style.display = 'inline';
         					noeud = cherche[i].parentNode.childNodes[1];
         					noeud.style.display = 'inline';
         					noeud.style.border = '0';
         					}
         				if(cherche[i].type == 'checkbox'){
         					cherche[i].parentNode.style.display = 'block';
         					cherche[i].style.display = 'inline';
         					cherche[i].checked = false;
         					}	
         				if (cherche[i].className == "elem-base")
         					cherche[i].checked = "checked";

				}
				
				// on remet le prix total en valeur initiale
				document.getElementById('prix-var').innerHTML = parseInt(prixtotal);
				// on recalcule le prix TTC initial
				calculpp(document.getElementById('marge').value);
				// on vide les espaces de stackage des plus value 
				for(var i=1; i<nbtampons; i++){
					document.getElementById('prix'+i+'-temp').innerHTML = "";
				}
				// on vide l'espace de stockage de la famille en cours
				document.getElementById('famille-temp').innerHTML = "";
				
				//on fait disparaitre la div de prix mobile
				if(document.getElementById('status-prix').innerHTML == 'true'){
					opacity('prix-mobile', 100, 0, 500);
					document.getElementById('status-prix').innerHTML = 'false';
				}
				
				
					
            //on reaffiche les photos des familles  
			var imgaff = document.getElementsByTagName('img');
			
			for(var i=0; i<imgaff.length; i++){
			
			
         			if(imgaff[i].className == 'img-famille')
         			{	
         				imgaff[i].style.display = 'block';
         			}
         			
               	}
               	
             // on recherche et reaffiche la ligne 'sans option'
			var iAff = document.getElementsByTagName('span');
			
			for(var i=0; i<iAff.length; i++){
			
					if(iAff[i].className == 'no-options')
         			{	
         				iAff[i].style.display = 'inline';
         			}
         			
         			
         		}
         		
         		
         	// on reaffiche tous les sauts de lignes 
			var brAff = document.getElementsByTagName('br');

			for(var i=0; i<brAff.length; i++){
			 				
         				brAff[i].style.display = 'inline';
         				
         			
         		}

		}
		
		
		
//*************************************************************************************************************************************************				
		
	function refreshAff(){
		
		
		var cherche = document.getElementsByTagName('input');
     		
     			for(var i=0; i<cherche.length; i++){
     			
     				
         				if(cherche[i].type == 'radio'){
         					
         					
         					/*if(cherche[i].checked == true){         					
         					
							    maChaine = cherche[i].parentNode.innerHTML;
         						
         						// on supprime la vignette rajoutée pour l'impression
         						long = maChaine.length;
         					
         						//on cherche le début de la balise img
         						deb = maChaine.indexOf('<img');
         						// on cherche la fin de la balise img (le premier > que l'on trouve :)
         						fin = maChaine.indexOf('>') + 1 ;
         					
								// on récupere la chaine sans la balise img
								piece = maChaine.substring(fin, long);
								
								// on reecrit dans la balise parent
								cherche[i].parentNode.innerHTML = piece;
							}*/
         					       
         					       
	      					// on repositionne les élements dans le style du configurateur (autre que style devis)
	      					noeud = cherche[i].parentNode.childNodes[1];
         					noeud.style.display = 'inline';
         					noeud.style.border = '0';
       
         					       					
         					// on re-affiche
         					cherche[i].parentNode.style.display = 'block';
         					cherche[i].style.display = 'inline';
         					
         					
         					       					        					
         					}
         				
         				if(cherche[i].type == 'checkbox'){
         					cherche[i].parentNode.style.display = 'block';
         					cherche[i].style.display = 'inline';
         					}
         				

				}
				
				//on fait disparaitre la div de prix mobile
				if(document.getElementById('status-prix').innerHTML == 'true'){
					opacity('prix-mobile', 100, 0, 500);
					document.getElementById('status-prix').innerHTML = 'false';
				}
				
				
			     //on reaffiche les photos des familles  
			var imgaff = document.getElementsByTagName('img');
			
			for(var i=0; i<imgaff.length; i++){
			
			
         			if(imgaff[i].className == 'img-famille')
         			{	
         				imgaff[i].style.display = 'block';
         			}
         			
               	}
               	
             // on recherche et reaffiche la ligne 'sans option'
			var iAff = document.getElementsByTagName('span');
			for(var i=0; i<iAff.length; i++){
			
					if(iAff[i].className == 'no-options')
         			{	
         				iAff[i].style.display = 'inline';
         			}
         			// on reaffiche les liens vers les photos mini
         			if(iAff[i].className == 'voir-mini')
         			{	
         				iAff[i].style.display = 'inline';
         			}
         		}
         		
         		
         	// on reaffiche tous les sauts de lignes 
			var brAff = document.getElementsByTagName('br');

			for(var i=0; i<brAff.length; i++){
			 				
         				brAff[i].style.display = 'inline';
         				
         			
         		}

		}

//************************************************************************


 function AffInst (id) {
  	document.getElementById(id).style.display = 'block';
 }	
 
 function MaskInst (id) {
  	document.getElementById(id).style.display = 'none';
 }
		
	
	
// Affichage infobulle boitier 


function GetId(id){
	return document.getElementById(id);
}


var idisp=false; // La variable i nous dit si la bulle est visible ou non

function move(e) {
  if(idisp) {  // Si la bulle est visible, on calcul en temps reel sa position ideale
    if (navigator.appName != "Microsoft Internet Explorer") { // Si on est pas sous IE
    	GetId("curseur").style.left = e.pageX + 5+"px";
    	GetId("curseur").style.top = e.pageY + 10+"px";
    	
    }
    else { // 
    	if(document.documentElement.clientWidth>0) {
			GetId("curseur").style.left= event.clientX+document.documentElement.scrollLeft+5+"px";
			GetId("curseur").style.top= event.clientY+document.documentElement.scrollTop+22+"px";
			
    	} 
    	else {
				
				GetId("curseur").style.left=20+event.x+document.body.scrollLeft+"px";
				GetId("curseur").style.top=10+event.y+document.body.scrollTop+"px";
	     	 }
    }
  }
}



function montre(nom,obj) {
	
	//affiche la main 
	obj.style.cursor='pointer';
	
  if(idisp==false) {
 	 GetId("curseur").style.display="block"; 
  	 GetId("curseur").innerHTML = "<img src='img/mini/"+nom+"' border='0'/>"; 
  	 idisp=true;
  }
}


function cache() {
	if(idisp==true) {
		GetId("curseur").style.display="none"; // Si la bulle était visible on la cache
		idisp=false;
	}
}

document.onmousemove=move; // des que la souris bouge, on appelle la fonction move pour mettre a jour la position de la bulle.

//-->	
		
		