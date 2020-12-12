<?php

$pris = new PDO('mysql:host=localhost;dbname=crm', 'root', '');
$pris->query("SET character_set_results=utf8mb4");


$sqlVadybinnkai = "SELECT * FROM vadybininkai";

$vadybininkai = $pris->query($sqlVadybinnkai);
if ($vadybininkai->rowCount() > 0) {
    
    echo "<select id='vadybininkas'>";
    echo "<option value='' disabled selected> Pasirinkite vadybininką</option>";

    while ($vadybininkas = $vadybininkai->fetch(PDO::FETCH_ASSOC)) {
        $vardas = $vadybininkas['vardas'];
        $pavarde = $vadybininkas['pavarde'];
        echo "<option value='$vardas $pavarde'>$vardas $pavarde</option>";
    }
    echo "</select>";
    echo "<label>Materialize Select</label>";
}
?>
