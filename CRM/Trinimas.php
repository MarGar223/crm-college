<?php



$pris = new PDO('mysql:host=localhost;dbname=crm', 'root', '');

$trinamasKlientas = $_GET['TrId'];

$sql = "DELETE FROM klientai WHERE id = ? ";

$klientai = $pris->prepare($sql);
$klientai->bindParam(1, $trinamasKlientas, PDO::PARAM_INT);
$klientai->execute();
