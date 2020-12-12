<?php

$pris = new PDO('mysql:host=localhost;dbname=crm', 'root', '');


$klientoId = $_GET['kId'];





// visi irasai kliento pagal ID
if (!empty($klientoId)) {
    $sql = "SELECT * FROM irasai WHERE klientas_id = ?";
    $sqlIrasai = $pris->prepare($sql);
    $sqlIrasai->bindParam(1, $klientoId, PDO::PARAM_INT);
    $sqlIrasai->execute();

    if ($sqlIrasai->rowCount() > 0) {
        while ($irasas = $sqlIrasai->fetch(PDO::FETCH_ASSOC)) {
            $data = $irasas['data_laikas'];
            $vadybininkas = $irasas['vadybininkas'];
            $tekstas = $irasas['irasas'];
            $tipas = $irasas['tipas'];
            $klientasId = $irasas['klientas_id'];
            $irasoId = $irasas['id'];

            if ($tipas == "Uzklausa" || $tipas == "Užklausa") {
                echo
            "<div id='uzklausa'>
                <h5 ><i>$data</i> Užklausa: </h5>
                <span>$tekstas</span><br>
                <span>Vadybininkas: <i>$vadybininkas</i></span>
            </div>";
            }
            if ($tipas == "Atsakymas") {
                echo
            "<div id='atsakymas'>
                <h5><i>$data</i> Atsakymas: </h5>
                <span>$tekstas</span><br>
                <span>Vadybininkas: <i>$vadybininkas</i></span>
            </div>";
            }
        }
    }

}
// visi irasai kliento pagal ID end



