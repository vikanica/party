<?php
require 'vendor/autoload.php';
session_start();
if (isset($_SESSION['admin_access'])) {
  if (($_SESSION['admin_access']) == 'fnupaw39r23rvwefk91248')
  {
    $app = new \atk4\ui\App('Записи на тусовку');
    $app->initLayout('Admin');


    class Friends extends \atk4\data\Model {
      	public $table = 'party-b';
    function init() {
      	parent::init();
      	$this->addField('name');
        $this->addField('surname');
        $this->addField('email');
        $this->addField('phone_number',['default'=>371]);
      	//$this->addField('password',['type'=>'password']);
        $this->addField('birthday',['type'=>'date']);
        $this->addField('notes', ['type'=>'text']);
        $this->addField('age');
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
