<?php
require 'vendor/autoload.php';
session_start();
if (isset($_SESSION['admin_access'])) {
  if (($_SESSION['admin_access']) == 'fnupaw39r23rvwefk91248')
  {
    $app = new \atk4\ui\App('Записи на тусовку');
    $app->initLayout('Admin');

  $db = new \atk4\data\Persistence_SQL('mysql:host=eu-mm-auto-dub-01-b.cleardb.net;dbname=heroku_d6f5fd68101f5d4;charset=utf8', 'b3484af324fedb','73d52b5043cbe42');
    class Friends extends \atk4\data\Model {
      	public $table = 'friends';
    function init() {
      	parent::init();
      	$this->addField('name');
        $this->addField('surname');
        $this->addField('phone_number',['default'=>371]);
        $this->addField('email');
      	//$this->addField('password',['type'=>'password']);
        $this->addField('birthday',['type'=>'date']);
        $this->addField('notes', ['type'=>'text']);
    }
    }

    $app->layout->leftMenu->addItem(['Главная страница', 'icon'=>'unordered list'],['index']);
    $crud = $app->layout->add('CRUD');
    $crud->setModel(new Friends($db));
    $crud->addQuickSearch(['name','surname','phone_number','age']);
  } else {
    header('Location: index.php');
  }
} else {
  header('Location: index.php');
}
