<?php ?>
<head>
<title>[ Nemo ] - Configurateur BTO - Calculez votre prix d'achat !  -</title>

		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<link rel="stylesheet" href="style.css" type="text/css" />
		<script type="text/javascript" src="javascript/js.js"></script>
		<!--<meta http-equiv="refresh" content="0; url=http://www.nemo-fr.com/config-nemo/index_const.php" /> -->
		<meta name="description" content="NEMO Grossiste Informatique Import export et distributeur des produits de la marque AMARINA. Choisissez votre Pc monté et calculez votre prix d'achat." />
		<meta name="keywords" content="nemo, pc monté, configuration pc, pc gamer, pc bureautique, calcul du prix d'achat, options pc, carte graphique, carte mère, processeur, disque dur, système d'exploitation, configurateur en ligne" />
		
		<script language="JavaScript" type="text/JavaScript">

		function MM_findObj(n, d) { //v4.01
  		var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    	d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  		if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  		for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  		if(!x && d.getElementById) x=d.getElementById(n); return x;
		}

		function MM_validateForm() { //v4.0
  		var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
  		for (i=0; i<(args.length-2); i+=3) { test=args[i+2]; val=MM_findObj(args[i]);
    	if (val) { nm=val.name; if ((val=val.value)!="") {
      	if (test.indexOf('isEmail')!=-1) { p=val.indexOf('@');
        if (p<1 || p==(val.length-1)) errors+='- '+nm+' doit être une adresse mail valide afin que nous puissions traiter votre demande.\n\n';
      	} 
      		else if (test!='R') { num = parseFloat(val);
        			if (isNaN(val)) errors+='- '+nm+' must contain a number.\n';
        			if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
         			min=test.substring(8,p); max=test.substring(p+1);
          			if (num<min || max<num) errors+='- '+nm+' must contain a number between '+min+' and '+max+'.\n';
        			
    	} 
    	}else 
    				{
    						if (val == '-- Choix --') errors +='> ' +nm+' doit etre renseignée.\n'; 
    		  				if (val == '-- Selectionnez dans la liste --') errors +='> Merci de selectionner le service à contacter\n'; 
    				}
    	}else if (test.charAt(0) == 'R') errors += '> '+nm+'\n'; }
  		} if (errors) alert('Attention, Champ(s) Obligatoire(s):\n\n'+errors);
  		document.MM_returnValue = (errors == '');
		}
		</script>
	
		<style type="text/css"> 
		
   		.img-famille {
			float:right;
			position:relative;
			bottom:20px;
			right:15px;
			margin-bottom:-20px;
		}
		
		
		.prix-mobile {
			margin-left:90px;
			z-index:1;
			text-align:left;
			font-size:11px;
			font-family: verdana,arial;
			background-color: #fff;
			padding:3px;
			border:5px solid #ccc;
			position:relative;
			top:570px;
			width:110px;
			-moz-opacity: 0;
			filter: alpha(opacity=0); 
			opacity:0;
		}
		
		html>body .prix-mobile {
  			position: fixed;
		}
		
		</style>

		
		<!--[if IE 7]>
   
   		<style type="text/css"> 
   		.img-famille {
			float:right;
			position:relative;
			right:15px;
			bottom: 20px;
			margin-bottom:-70px;

		}
  		
   		 </style> 
   
		<![endif]-->
				
		
		<!--[if IE 6]>
   
   		<style type="text/css"> 
   		.img-famille {
			float:right;
			position:relative;
			right:15px;
			bottom: 20px;
			margin-bottom:-70px;
		}
  		
  		.prix-mobile {
			
			position: absolute;
			z-index:1;
			text-align:right;
			font-size:12px;
			font-family: verdana,arial;
			background-color: #fff;
			padding:3px;
			border:5px solid #ccc;
			width:110px;
			right:3%;
			-moz-opacity: 0;
			filter: alpha(opacity=0); 
			opacity:0;
		}
  		
  		
		.prix-mobile{
 		 	top:expression(documentElement.scrollTop+body.scrollTop+200);
 		}
		
		body { 
 			background: url(null) fixed ; /* évite le sautillement */
 		} 
  				
   		 </style> 
   
		<![endif]-->
		
</head>
<body>

	<?php include ('connex-base.php');?>
		
	<!-- ENTETE DE PAGE -->
	<div style="background-color:#333333;"> 
		
		<div id="bloc-titre"><img src="pics/title-1.jpg" alt="Configurateur Bto | Votre devis sur mesure" border="0" alt=''/></div>
	
	</div>
	
		<?php include ('inc/menu.php'); ?>
		
	
	<!-- FIN ENTETE -->