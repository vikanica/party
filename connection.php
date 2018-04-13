<?php
if(isset($_ENV['con'])){
$db = new \atk4\data\Persistence_SQL($_ENV['con']);
} else {
  $db = new \atk4\data\Persistence_SQL('mysql:dbname=party;host=localhost','root','');
}
