<?php
class Congress extends AbstractDbObject {

	const TABLE_NAME = 'congress';

	protected $id = 0;

	public function getId() {
		return $this->id;
	}

	public function setId($id) {
		$this->id = $id;
	}

	protected $nom = '';

	public function getNom() {
		return $this->nom;
	}

	public function setNom($nom) {
		$this->nom = $nom;
	}

	protected $action_number = 48;

	public function getAction_number() {
		return $this->action_number;
	}

	public function setAction_number($action_number) {
		$this->action_number = $action_number;
	}

	protected $bot_number = 48;

	public function getBot_number() {
		return $this->bot_number;
	}

	public function setBot_number($bot_number) {
		$this->bot_number = $bot_number;
	}

	protected $bot_coef = 48;

	public function getBot_coef() {
		return $this->bot_coef;
	}

	public function setBot_coef($bot_coef) {
		$this->bot_coef = $bot_coef;
	}

	protected $level = 48;

	public function getLevel() {
		return $this->level;
	}

	public function setLevel($level) {
		$this->level = $level;
	}

	protected $budget = 42;

	public function getBudget() {
		return $this->budget;
	}

	public function setBudget($budget) {
		$this->budget = $budget;
	}

	/**
	 *
	 * @param Player $player        	
	 * @return ActionResult
	 */
	public function stopCongress(Player $player) {
		$res = new ActionResult();
		$player->setId_congress(null);
		$player->setRemaining_time(0);
		$sumUp = $this->sumUpCongress($player);
		$this->achievment($player, $sumUp);
		Dispatcher::setPage('congress');
		Item::desassociateItem($player, Item::loadByName('paillardier'));
		$res->setMessage('Congrès ' . $this->getNom() . ' terminé.');
		$res->setSuccess(ActionResult::SUCCESS);
		return $res;
	}

	/**
	 *
	 * @param Player $player        	
	 * @return multitype:unknown
	 */
	protected function sumUpCongress(Player $player) {
		$sumUp = array();
		$uid = $player->getId();
		$sql = 'SELECT count(id) AS nb, `action_name`, `success` FROM `history`';
		$sql .= ' WHERE `id_player`=' . $uid . ' AND ';
		$sql .= ' `date_action` >=';
		$sql .= ' (';
		$sql .= '    SELECT `date_action` FROM `history`';
		$sql .= '    WHERE `id_player`=' . $uid . ' AND `action_name`="StartCongress"';
		$sql .= '    ORDER BY `date_action` DESC LIMIT 1';
		$sql .= ' )';
		$sql .= ' GROUP BY `action_name`,`success`';
		$sql .= ' ORDER BY `action_name`,`success`';
		$stmt = $GLOBALS['DB']->query($sql);
		$stmt->setFetchMode(PDO::FETCH_ASSOC);
		while ($stmt && ($stat = $stmt->fetch())) {
			$sumUp[$stat['action_name'] . "_" . $stat['success']] = $stat['nb'];
		}
		return $sumUp;
	}

	/**
	 *
	 * @param Player $player        	
	 * @param array $sumUp        	
	 */
	protected function achievment(Player $player, array $sumUp) {
		if (isset($sumUp['Chopper_' . ActionResult::SUCCESS]) && ($sumUp['Chopper_' . ActionResult::SUCCESS] >= 4)) {
			$item = Item::loadByName('poule');
			if (!Item::isAssociated($player->getId(), $item->getId())) {
				Item::associateItem($player, $item);
				Dispatcher::addMessage('T\'as choppé plus de 4 fois en 1 congrès, ca mérite une poule ca!', Dispatcher::MESSAGE_LEVEL_SUCCES);
			} else {
				Dispatcher::addMessage('T\'as choppé plus de 4 fois en 1 congrès, ca mériterait une poule, mais t\'en as déjà une.', Dispatcher::MESSAGE_LEVEL_INFO);
			}
		}
		if (isset($sumUp['Sing_' . ActionResult::SUCCESS]) && ($sumUp['Sing_' . ActionResult::SUCCESS] >= 4)) {
			$item = Item::loadByName('cle_de_sol');
			if (!Item::isAssociated($player->getId(), $item->getId())) {
				Item::associateItem($player, $item);
				Dispatcher::addMessage('Ca va tu chantes plutôt bien, ca mérite une clé de sol ca!', Dispatcher::MESSAGE_LEVEL_SUCCES);
			} else {
				Dispatcher::addMessage('Ca va tu chantes plutôt bien, ca mériterait une clé de sol, mais t\'en as déjà une.', Dispatcher::MESSAGE_LEVEL_INFO);
			}
		}
		if (isset($sumUp['Duel_' . ActionResult::SUCCESS]) && ($sumUp['Duel_' . ActionResult::SUCCESS] >= 3)) {
			$item = Item::loadByName('cornue_et_ballon');
			if (!Item::isAssociated($player->getId(), $item->getId())) {
				Item::associateItem($player, $item);
				Dispatcher::addMessage('Tu as défié 3 personne avec succès, ca mérite une cornue et ballon!', Dispatcher::MESSAGE_LEVEL_SUCCES);
			} else {
				Dispatcher::addMessage('Tu as défié 3 personne avec succès, ca mériterait ne cornue et ballon, mais t\'en as déjà une.', Dispatcher::MESSAGE_LEVEL_INFO);
			}
		}
		$chopper = isset($sumUp['Chopper_' . ActionResult::SUCCESS]) ? $sumUp['Chopper_' . ActionResult::SUCCESS] : 0;
		$sing = isset($sumUp['Sing_' . ActionResult::SUCCESS]) ? $sumUp['Sing_' . ActionResult::SUCCESS] : 0;
		$duel = isset($sumUp['Duel_' . ActionResult::SUCCESS]) ? $sumUp['Duel_' . ActionResult::SUCCESS] : 0;
		$pins = isset($sumUp['Pins_' . ActionResult::SUCCESS]) ? $sumUp['Pins_' . ActionResult::SUCCESS] : 0;
		$sumSuccess = $chopper + $sing + $duel + $pins;
		$player->addMoney($sumSuccess * 5);
		Dispatcher::addMessage('Tu as cummulé ' . $sumSuccess . ' succès parmis: chopper, chanter, défier et pinser. Cela mérite ' . ($sumSuccess * 5) . ' Cédibidulités.', Dispatcher::MESSAGE_LEVEL_SUCCES);
	}

	/**
	 *
	 * @param String $id        	
	 * @return Congress
	 */
	public static function load($id) {
		$sth = $GLOBALS['DB']->prepare('SELECT * FROM ' . self::TABLE_NAME . ' WHERE id = :id;');
		$sth->bindValue(':id', $id, PDO::PARAM_STR);
		$sth->setFetchMode(PDO::FETCH_ASSOC);
		if ($sth->execute() === false) {
			// var_dump($sth->errorInfo());
			return false;
		}
		$arr = $sth->fetch();
		if (!$arr) {
			return $arr;
		} else {
			$obj = new self();
			$obj->populate($arr);
			return $obj;
		}
	}

	public function save() {
		if (!$this->id) {
			$this->create();
		} else {
			$this->update();
		}
	}

	public function create() {
		$sth = $GLOBALS['DB']->prepare('INSERT INTO ' . self::TABLE_NAME . ' ' . '(nom, action_number, bot_number, bot_coef, level, budget)' . ' VALUES (:nom, :action_number, :bot_number, :bot_coef, :level, :budget);');
		$sth->bindValue(':nom', $this->nom, PDO::PARAM_STR);
		$sth->bindValue(':action_number', $this->action_number, PDO::PARAM_INT);
		$sth->bindValue(':bot_number', $this->bot_number, PDO::PARAM_INT);
		$sth->bindValue(':bot_coef', $this->bot_coef, PDO::PARAM_INT);
		$sth->bindValue(':level', $this->level, PDO::PARAM_STR);
		$sth->bindValue(':budget', $this->budget, PDO::PARAM_INT);
		if ($sth->execute() === false) {
			throw new Exception(print_r($sth->errorInfo(), true));
		}
		$this->setId($GLOBALS['DB']->lastInsertId());
	}

	public function defaultValues() {
		$this->nom = 'Week-end luche';
		$this->action_number = 10;
		$this->bot_number = 20;
		$this->bot_coef = 1;
		$this->level = 'impétrent';
		$this->budget = 50;
	}

	public function update() {
		$sth = $GLOBALS['DB']->prepare('UPDATE ' . self::TABLE_NAME . ' SET nom=:nom, action_number=:action_number, bot_number=:bot_number, bot_coef=:bot_coef, level=:level, budget=:budget WHERE id=:id;');
		$sth->bindValue(':id', $this->id, PDO::PARAM_INT);
		$sth->bindValue(':nom', $this->nom, PDO::PARAM_STR);
		$sth->bindValue(':action_number', $this->action_number, PDO::PARAM_INT);
		$sth->bindValue(':bot_number', $this->bot_number, PDO::PARAM_INT);
		$sth->bindValue(':bot_coef', $this->bot_coef, PDO::PARAM_INT);
		$sth->bindValue(':level', $this->level, PDO::PARAM_STR);
		$sth->bindValue(':budget', $this->budget, PDO::PARAM_INT);
		if ($sth->execute() === false) {
			throw new Exception(print_r($sth->errorInfo(), true));
		}
	}

	public function delete() {
		$GLOBALS['DB']->query('DELETE FROM ' . self::TABLE_NAME . ' WHERE id=' . $this->id . ';')->fetch(PDO::FETCH_ASSOC);
	}
}
