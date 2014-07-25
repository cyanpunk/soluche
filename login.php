<?php
session_start();
require_once ('db.php');
require_once ('classes/AbstractDbObject.class.php');
require_once ('classes/Player.class.php');
require_once ('classes/Item.class.php');

$errorMessage = '';
if (isset($_REQUEST['logout'])) {
	unset($_SESSION['user']);
	unset($_SESSION['congress']);
}

if (isset($_POST['ok']) && isset($_POST['login']) && isset($_POST['pass'])) {
	try {
		$res = Player::login($_POST['login'], $_POST['pass']);
		if ($res === null) {
			$errorMessage = 'Mot de passe ou login incorrect.';
		} else {
			$_SESSION['user'] = $res;
			header('Location: main.php');
		}
	} catch (Exception $e) {
		echo $e;
		$errorMessage = 'Soucis de connection a la BDD: ' . $e;
	}
}

if (isset($_POST['new']) && isset($_POST['login']) && isset($_POST['pass']) && isset($_POST['robot'])) {
	if (($_POST['robot'] == 'lourd') || ($_POST['robot'] == 'personne lourde')) {
		try {
			if (!Player::loginExists($_POST['login'])) {
				$player = new Player();
				$player->defaultValues();
				$player->nom = $_POST['login'];
				$player->pass = $_POST['pass'];
				$player->create();
				Item::associate($this->getId(), 12);
				Item::associate($this->getId(), 13);
				Item::associate($this->getId(), 13);
				echo 'Inscription ok';
			} else {
				$errorMessage = 'Ce surnom existe déja.';
			}
		} catch (Exception $e) {
			echo $e;
			$errorMessage = 'Probleme avec la BDD: ' . $e;
		}
	} else {
		$errorMessage = 'Vous êtes un robot.';
	}
}

?>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Soluche: login</title>
<link rel="stylesheet" href="theme/theme.css" type="text/css">
<link rel="stylesheet" href="theme/other.css" type="text/css">
<style type="text/css">
th {
	text-align: right;
	width: 100px;
}

td {
	text-align: left;
	width: 300px;
}

.intro {
	font-size: 18px;
	margin: 10px;
}
</style>
</head>
<body>
	<h1>Soluche</h1>
	<div class="intro">Un RPG sans elf ni orc, sans point de vie ou de mana. Où ton inventaire n'est pas une épée runique et une armure enchantée.</div>
	<div class="intro">Combat tes rivaux à coup de secs, chante, partage des valeurs, essaye de choper et prends garde à ne pas finir en PLS.</div>
	<br />
	<?php if ($errorMessage) {?>
	<div class="errorMessage"><?php echo $errorMessage; ?></div>
	<?php } ?>
	<br />
	<form action="" method="post">
		<table>
			<tr>
				<th>Surnom</th>
				<td>
					<input type="text" id="login" name="login" value="">
				</td>
			</tr>
			<tr>
				<th>Pass</th>
				<td>
					<input type="password" id="pass" name="pass" value="">
				</td>
			</tr>
			<tr>
				<th></th>
				<td>
					<input type="submit" id="ok" name="ok" value="Ok">
				</td>
			</tr>
		</table>
	</form>
	<br />
	<a onclick="javascript:document.getElementById('FormNew').style.display='block';return false;">s'inscrire</a>
	<br />
	<form action="" method="post" id="FormNew" style="display: none;">
		<table>
			<tr>
				<th>Surnom</th>
				<td>
					<input type="text" id="login" name="login" value="">
				</td>
			</tr>
			<tr>
				<th>Pass</th>
				<td>
					<input type="password" id="pass" name="pass" value="">
				</td>
			</tr>
			<tr>
				<th>je ne suis pas un robot:</th>
				<td>
					Que signifie cet insigne?
					<img src="images/badges/pachyderme.jpg" width="50" height="50">
					<br />
					<input type="text" id="robot" name="robot" value="">
				</td>
			</tr>
			<tr>
				<th></th>
				<td>
					<input type="submit" id="new" name="new" value="Ok">
				</td>
			</tr>
		</table>
	</form>
	<a href="https://github.com/yannickbattail/soluche"><img style="position: absolute; top: 0; right: 0; border: 0;" src="images/Fork me on GitHub.png" alt="Fork me on GitHub"></a>
</body>
</html>
