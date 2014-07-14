<?php
class Player {

	public $id = 0;

	public function getId() {
		return $this->id;
	}

	public function setId($id) {
		$this->id = $id;
	}

	public $nom = 0;

	public function getNom() {
		return $this->nom;
	}

	public function setNom($nom) {
		$this->nom = $nom;
	}

	public $pass = '';

	public function getPass() {
		return $this->pass;
	}

	public function setPass($pass) {
		$this->pass = $pass;
	}

	public $lieu = '';

	public function getLieu() {
		return $this->lieu;
	}

	public function setLieu($lieu) {
		$this->lieu = $lieu;
	}

	public $points = 0;

	public function getPoints() {
		return $this->points;
	}

	public function setPoints($points) {
		$this->points = $points;
	}

	public function addPoints($points) {
		if ($points <= 0) {
			throw RulesException("on ne peut pas enlever des points.");
		}
		$this->points += $points;
	}

	public $notoriete = 0;

	public function getCalculatedNotoriete() {
		return $this->calculated['notoriete'];
	}

	public function getNotoriete() {
		return $this->notoriete;
	}

	public function setNotoriete($notoriete) {
		if ($notoriete < 0) {
			$this->notoriete = 0;
		} else {
			$this->notoriete = $notoriete;
		}
	}

	public function addNotoriete($notoriete) {
		$this->setNotoriete($this->getNotoriete() + $notoriete);
	}

	public $alcoolemie = 0;

	public function getCalculatedAlcoolemie() {
		return $this->calculated['alcoolemie'];
	}

	public function getAlcoolemie() {
		return $this->alcoolemie;
	}

	public function setAlcoolemie($alcoolemie) {
		if ($alcoolemie < 0) {
			$this->alcoolemie = 0;
		} else {
			$this->alcoolemie = $alcoolemie;
		}
		if (Pls::haveToGoToPls($this)) {
			Pls::sendToPls($this);
		}
	}

	public function addAlcoolemie($alcoolemie) {
		$this->setAlcoolemie($this->getAlcoolemie() + $alcoolemie);
	}

	public $alcoolemie_optimum = 0;

	public function getCalculatedAlcoolemie_optimum() {
		return $this->calculated['alcoolemie_optimum'];
	}

	public function getAlcoolemie_optimum() {
		return $this->alcoolemie_optimum;
	}

	public function setAlcoolemie_optimum($alcoolemie_optimum) {
		if ($alcoolemie_optimum < 1) {
			$this->alcoolemie_optimum = 1;
		} else if ($alcoolemie_optimum >= $this->alcoolemie_max) {
			$this->alcoolemie_optimum = $this->alcoolemie_max - 1;
		} else {
			$this->alcoolemie_optimum = $alcoolemie_optimum;
		}
	}

	public function addAlcoolemie_optimum($alcoolemie_optimum) {
		$this->setAlcoolemie_optimum($this->getAlcoolemie_optimum() + $alcoolemie_optimum);
	}

	public $alcoolemie_max = 0;

	public function getCalculatedAlcoolemie_max() {
		return $this->calculated['alcoolemie_max'];
	}

	public function getAlcoolemie_max() {
		return $this->alcoolemie_max;
	}

	public function setAlcoolemie_max($alcoolemie_max) {
		if ($alcoolemie_max <= $this->alcoolemie_optimum + 1) {
			$this->$alcoolemie_max = $this->alcoolemie_optimum - 1;
		} else {
			$this->alcoolemie_max = $alcoolemie_max;
		}
	}

	public function addAlcoolemie_max($alcoolemie_max) {
		$this->setAlcoolemie_max($this->getAlcoolemie_max() + $alcoolemie_max);
	}

	public $fatigue = 0;

	public function getCalculatedFatigue() {
		return $this->calculated['fatigue'];
	}

	public function getFatigue() {
		return $this->fatigue;
	}

	public function setFatigue($fatigue) {
		if ($fatigue < 0) {
			$this->fatigue = 0;
		} else if ($fatigue >= $this->calculated['fatigue_max']) {
			$this->fatigue = $this->calculated['fatigue_max'];
		} else {
			$this->fatigue = $fatigue;
		}
	}

	public function addFatigue($fatigue) {
		$this->setFatigue($this->getFatigue() + $fatigue);
	}

	public $fatigue_max = 0;

	public function getCalculatedFatigue_max() {
		return $this->calculated['fatigue_max'];
	}

	public function getFatigue_max() {
		return $this->fatigue_max;
	}

	public function setFatigue_max($fatigue_max) {
		if ($fatigue_max <= 2) {
			$this->fatigue_max = 2;
		} else {
			$this->fatigue_max = $fatigue_max;
		}
	}

	public function addFatigue_max($fatigue_max) {
		$this->setFatigue_max($this->getFatigue_max() + $fatigue_max);
	}

	public $sex_appeal = 0;

	public function getCalculatedSex_appeal() {
		return $this->calculated['sex_appeal'];
	}

	public function getSex_appeal() {
		return $this->sex_appeal;
	}

	public function setSex_appeal($sex_appeal) {
		if ($sex_appeal <= 1) {
			$this->sex_appeal = 2;
		} else {
			$this->sex_appeal = $sex_appeal;
		}
	}

	public function addSex_appeal($sex_appeal) {
		$this->setSex_appeal($this->getSex_appeal() + $sex_appeal);
	}

	public $en_pls = 0;

	public function getEn_pls() {
		return $this->sex_appeal;
	}

	public function setEn_pls($en_pls) {
		if ($en_pls) {
			$this->en_pls = 1;
		} else {
			$this->en_pls = 0;
		}
	}

	public $debut_de_pls = 0;

	public function getDebut_de_pls() {
		return $this->debut_de_pls;
	}

	public function setDebut_de_pls($debut_de_pls) {
		$this->debut_de_pls = $debut_de_pls;
	}

	public $inventory = array();

	public function getInventory() {
		return $this->inventory;
	}

	public function setInventory(array $inventory) {
		$this->inventory = $inventory;
	}

	private $calculated = array();

	/**
	 *
	 * @param int $id        	
	 * @return Player
	 */
	public static function load($id) {
		$sth = $GLOBALS['DB']->query('SELECT * FROM player WHERE id=' . intval($id));
		$sth->setFetchMode(PDO::FETCH_CLASS, 'Player');
		return $sth->fetch();
	}

	public function save() {
		if (!$this->id) {
			$this->create();
		} else {
			$this->update();
		}
	}

	public function create() {
		$sth = $GLOBALS['DB']->prepare('INSERT INTO player ' . '(nom, pass, lieu, points, notoriete, alcoolemie, alcoolemie_optimum, alcoolemie_max, fatigue, fatigue_max, sex_appeal, en_pls, debut_de_pls)' . ' VALUES ( :nom, :pass, :lieu, :points, :notoriete, :alcoolemie, :alcoolemie_optimum, :alcoolemie_max, :fatigue, :fatigue_max, :sex_appeal, :en_pls, :debut_de_pls);');
		$sth->bindValue(':nom', $this->nom, PDO::PARAM_STR);
		$sth->bindValue(':pass', $this->pass, PDO::PARAM_STR);
		$sth->bindValue(':lieu', $this->lieu, PDO::PARAM_STR);
		$sth->bindValue(':points', $this->points, PDO::PARAM_INT);
		$sth->bindValue(':notoriete', $this->notoriete, PDO::PARAM_INT);
		$sth->bindValue(':alcoolemie', $this->alcoolemie, PDO::PARAM_INT);
		$sth->bindValue(':alcoolemie_optimum', $this->alcoolemie_optimum, PDO::PARAM_INT);
		$sth->bindValue(':alcoolemie_max', $this->alcoolemie_max, PDO::PARAM_INT);
		$sth->bindValue(':fatigue', $this->fatigue, PDO::PARAM_INT);
		$sth->bindValue(':fatigue_max', $this->fatigue_max, PDO::PARAM_INT);
		$sth->bindValue(':sex_appeal', $this->sex_appeal, PDO::PARAM_INT);
		$sth->bindValue(':en_pls', $this->en_pls, PDO::PARAM_INT);
		$sth->bindValue(':debut_de_pls', $this->debut_de_pls, PDO::PARAM_INT);
		if ($sth->execute() === false) {
			throw new Exception(print_r($sth->errorInfo(), true));
		}
	}

	public function defaultValues() {
		$this->lieu = 'camping';
		$this->points = 0;
		$this->notoriete = 0;
		$this->alcoolemie = 0;
		$this->alcoolemie_optimum = 7;
		$this->alcoolemie_max = 10;
		$this->fatigue = 0;
		$this->fatigue_max = 10;
		$this->sex_appeal = 5;
		$this->en_pls = 0;
		$this->debut_de_pls = 0;
	}

	public function update() {
		$sth = $GLOBALS['DB']->prepare('UPDATE player SET nom=:nom, pass=:pass, lieu=:lieu, points=:points, notoriete=:notoriete, alcoolemie=:alcoolemie, alcoolemie_optimum=:alcoolemie_optimum, alcoolemie_max=:alcoolemie_max, fatigue=:fatigue, fatigue_max=:fatigue_max, sex_appeal=:sex_appeal, en_pls=:en_pls, debut_de_pls=:debut_de_pls WHERE id=:id;');
		$sth->bindValue(':id', $this->id, PDO::PARAM_INT);
		$sth->bindValue(':nom', $this->nom, PDO::PARAM_STR);
		$sth->bindValue(':pass', $this->pass, PDO::PARAM_STR);
		$sth->bindValue(':lieu', $this->lieu, PDO::PARAM_STR);
		$sth->bindValue(':points', $this->points, PDO::PARAM_INT);
		$sth->bindValue(':notoriete', $this->notoriete, PDO::PARAM_INT);
		$sth->bindValue(':alcoolemie', $this->alcoolemie, PDO::PARAM_INT);
		$sth->bindValue(':alcoolemie_optimum', $this->alcoolemie_optimum, PDO::PARAM_INT);
		$sth->bindValue(':alcoolemie_max', $this->alcoolemie_max, PDO::PARAM_INT);
		$sth->bindValue(':fatigue', $this->fatigue, PDO::PARAM_INT);
		$sth->bindValue(':fatigue_max', $this->fatigue_max, PDO::PARAM_INT);
		$sth->bindValue(':sex_appeal', $this->sex_appeal, PDO::PARAM_INT);
		$sth->bindValue(':en_pls', $this->en_pls, PDO::PARAM_INT);
		$sth->bindValue(':debut_de_pls', $this->debut_de_pls, PDO::PARAM_INT);
		if ($sth->execute() === false) {
			throw new Exception(print_r($sth->errorInfo(), true));
		}
	}

	public function delete() {
		$GLOBALS['DB']->query('DELETE FROM player WHERE id=' . $this->id . ';')->fetch(PDO::FETCH_ASSOC);
	}

	/**
	 *
	 * @param String $login        	
	 * @param String $pass        	
	 * @return Player
	 */
	public static function login($login, $pass) {
		$sth = $GLOBALS['DB']->prepare('SELECT * FROM player WHERE nom=:nom AND pass=:pass;');
		$sth->bindValue(':nom', $login, PDO::PARAM_STR);
		$sth->bindValue(':pass', $pass, PDO::PARAM_STR);
		$sth->setFetchMode(PDO::FETCH_CLASS, 'Player');
		if ($sth->execute() === false) {
			// var_dump($sth->errorInfo());
			return null;
		}
		return $sth->fetch();
	}

	/**
	 *
	 * @param String $login        	
	 * @return Player
	 */
	public static function loginExists($nom) {
		$sth = $GLOBALS['DB']->prepare('SELECT * FROM player WHERE nom=:nom');
		$sth->bindValue(':nom', $nom, PDO::PARAM_STR);
		$sth->setFetchMode(PDO::FETCH_CLASS, 'Player');
		if ($sth->execute() === false) {
			// var_dump($sth->errorInfo());
			return false;
		}
		return true;
	}

	function loadInventory() {
		$this->calculated['notoriete'] = $this->notoriete;
		$this->calculated['alcoolemie'] = $this->alcoolemie;
		$this->calculated['alcoolemie_optimum'] = $this->alcoolemie_optimum;
		$this->calculated['alcoolemie_max'] = $this->alcoolemie_max;
		$this->calculated['fatigue'] = $this->fatigue;
		$this->calculated['fatigue_max'] = $this->fatigue_max;
		$this->calculated['sex_appeal'] = $this->sex_appeal;
		$this->inventory = array();
		
		$sth = $GLOBALS['DB']->query('SELECT O.* FROM objet O INNER JOIN inventory I ON I.idobject = O.id WHERE I.idplayer = ' . $this->id . ';');
		$sth->setFetchMode(PDO::FETCH_CLASS, 'Objet');
		while ($sth && ($objet = $sth->fetch())) {
			$this->inventory[] = $objet;
			if ($objet->permanent) {
				$this->calculated['notoriete'] += $objet->notoriete;
				$this->calculated['alcoolemie'] += $objet->alcoolemie;
				$this->calculated['alcoolemie_optimum'] += $objet->alcoolemie_optimum;
				$this->calculated['alcoolemie_max'] += $objet->alcoolemie_max;
				$this->calculated['fatigue'] += $objet->fatigue;
				$this->calculated['fatigue_max'] += $objet->fatigue_max;
				$this->calculated['sex_appeal'] += $objet->sex_appeal;
			}
		}
		return $this;
	}
}