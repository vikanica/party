<?php
require 'vendor/autoload.php';
$app = new \atk4\ui\App('Добро пожаловать в никуда!');
$app->initLayout('Centered');
session_start();
$name=$_SESSION['name'];
$surname=$_SESSION['surname'];
$phone_number=$_SESSION['phone_number'];
$notes=$_SESSION['notes'];
$email=$_SESSION['email'];
$label = $app->layout->add(['Label', "Hello: ".$name.' '. $surname]);
$label = $app->layout->add(['Label', "Your phone number: ".$phone_number]);
$label = $app->layout->add(['Label', "Your notes: ". $notes]);
$label = $app->layout->add(['Label', "Your email: ". $email]);
