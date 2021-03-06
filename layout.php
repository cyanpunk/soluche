<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Soluche</title>
<link rel="icon" type="image/png" href="images/soluche_icon.png">
<link rel="stylesheet" href="theme/theme.css" type="text/css">
<link rel="stylesheet" href="theme/other.css" type="text/css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.9.1/themes/ui-darkness/jquery-ui.css">
<link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/themes/ui-darkness/jquery-ui.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script>
</head>
<body>
	<div id="header">Soluche</div>

	<div>
	<?php
	foreach (Dispatcher::getMessages() as $em) {
		echo '<div class="' . $em['level'] . '">' . $em['message'] . '</div>';
	}
	?>
	</div>
	<table id="skeleton">
		<tr>
			<td style="width: 200px">
				<div id="menu">
					<div class="login">
						<a href="userCustomisation.php" title="Editer les infos du faluchard"><img src="<?=$_SESSION['user']->getPhoto() ?>" style="max-width: 200px; max-height: 200px;" /></a>
						<br />
						<?=$_SESSION['user']->getNom(); ?> <?php echo $_SESSION['user']->getSex()?'<span style="color:cyan" title="bite">&#9794;</span>':'<span style="color:pink" title="vagin">&#9792;</span>'; ?>
						<a href="userCustomisation.php"><img src="images/util/edit_user.png" alt="Editer" title="Editer les infos du faluchard" style="width: 16px; height: 16px;"></a> <a href="login.php?logout=1"><img
								src="images/util/system-shutdown.png" alt="Quitter" title="Quitter" style="width: 16px; height: 16px;"></a>
						<?php printNotificationNumber(); ?>
					</div>
					<?php if ($_SESSION['user']->getId_congress() != 0) { ?>
					<div class="congress" title="Congrès en cours">
						Au congrès <?=$_SESSION['user']->getCongress()->getNom()?>.
						<br />Temps restant: <?=$_SESSION['user']->getRemaining_time()?> <img src="images/util/time-used.png" alt="¼ d'heure" width="16" height="16">
					</div>
					<?php } ?>
					<?php printUserStats($_SESSION['user']); ?>
					<?php /*printInventory2($_SESSION['user']);*/ ?>
					Chat:
					<?php printChat($_SESSION['user']); ?>
				</div>
			</td>
			<td style="min-width: 500px;">
				<div id="content">
					<?php  printTabsLieu(); ?>
					<?php  Dispatcher::displayPageContent(); ?>
				</div>
			</td>
			<td style="width: 200px">
				Radio faluche:
				<?php printNews(); ?>
			</td>
		</tr>
	</table>
	<div id="footer">
	<?php printChatGlobal(); ?>
	<div style="font-size: 10px; color: silver;" title="tu as perdu au jeu! ;-)">v 1.14</div>
	</div>
	<script type="text/javascript">
	var konamiCode = {
	    "i": 0,
	    "list": [ 38, 38, 40, 40, 37, 39, 37, 39, 66, 65 ],
	    "init": function() {
	        document.getElementsByTagName('BODY')[0].onkeydown = function(e) {
	            if (e.keyCode == konamiCode.list[konamiCode.i]) {
	                if (konamiCode.i == (konamiCode.list.length - 1)) {
	                    konamiCode.callback();
	                    konamiCode.i = 0;
	                } else {
	                    konamiCode.i++;
	                }
	            } else {
	                konamiCode.i = 0;
	            }
	        };
	    },
	    "callback": function() {
	        alert("konami code détecté!");
	    }
	};
	konamiCode.init();
	</script>	
</body>
</html>
