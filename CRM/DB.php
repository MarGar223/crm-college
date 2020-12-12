<?php



$pris = new PDO('mysql:host=localhost;dbname=crm', 'root', '');
$pris->query("SET character_set_results=utf8mb4");


$klientoId = $_GET['id'];
$klientoVardas = $_GET['v'];
$klientoPavarde = $_GET['p'];
$klientoTelefonas = $_GET['t'];
$klientoPastas = $_GET['el'];






$sql = "SELECT * FROM klientai WHERE ";
$sqlIrasai = "SELECT * FROM irasai WHERE";



        if (!empty($klientoId)) {
            if (strrchr($sql, "'") == true || strrchr($sqlIrasai, "'") == true) {
                $sql .= " AND id LIKE '" . $klientoId . "%'";
                $sqlIrasai .= " AND id LIKE '" . $klientoId . "%'";
            } else {
                $sql .=" ID LIKE '" . $klientoId . "%'";
                $sqlIrasai .=" ID LIKE '" . $klientoId . "%'";
            }
        }


        if (!empty($klientoVardas)) {
            if (strrchr($sql, "'") == true) {
                $sql .= " AND vardas LIKE '" . $klientoVardas . "%'";
            } else {
                $sql .=" vardas LIKE '" . $klientoVardas . "%'";
            }
        }

        if (!empty($klientoPavarde)) {
            if (strrchr($sql, "'") == true) {
                $sql .= "AND pavarde LIKE '" . $klientoPavarde . "%'";
            } else {
                $sql .="pavarde LIKE '" . $klientoPavarde . "%'";
            }
        }

        if (!empty($klientoTelefonas)) {
            if (strrchr($sql, "'") == true) {
                $sql .= "AND telefonas LIKE '" . $klientoTelefonas . "%'";
            } else {
                $sql .="telefonas LIKE '" . $klientoTelefonas . "%'";
            }
        }

        if (!empty($klientoPastas)) {
            if (strrchr($sql, "'") == true) {
                $sql .= "AND elPastas LIKE '" . $klientoPastas . "%'";
            } else {
                $sql .="elPatas LIKE '" . $klientoPastas . "%'";
            }
        }
        
        $klientai = $pris->prepare($sql);
        
        $klientai->execute();
        

        if ($klientai->rowCount() > 0) {
            echo "<table>";
            echo "<tr>";
            echo "<th>Kliento ID</th>";
            echo "<th>Vardas</th>";
            echo "<th>Pavardė</th>";
            echo "<th>Telefonas</th>";
            echo "<th>El. paštas</th>";
            echo "<th>Adresas</th>";
            echo "<th></th>";
            echo "<th></th>";
            echo "</tr>";
            
            while ($row = $klientai->fetch(PDO::FETCH_ASSOC)) {
                $rowKlientoId = $row["id"];
                $rowKlientoVardas = $row["vardas"];
                $rowKlientoPavarde = $row["pavarde"];
                $rowKlientoTelefonas = $row["telefonas"];
                $rowKlientoPastas = $row["elPastas"];
                $rowKlientoAdresas = $row["miestas"];
            
                echo "<tr>";
                echo "<td name='klientoId'>". $rowKlientoId. "</td>";
                echo "<td>". $rowKlientoVardas. "</td>";
                echo "<td>". $rowKlientoPavarde. "</td>";
                echo "<td>". $rowKlientoTelefonas. "</td>";
                echo "<td>". $rowKlientoPastas. "</td>";
                echo "<td>". $rowKlientoAdresas. "</td>";
                echo "<td><a class=\"btn cyan waves-effect waves-red  modal-trigger\" id=\"$rowKlientoId\" onclick=\"trinti(this.id)\"href=\"#modal2\"><i class=\"material-icons ikonos\">delete</i></a></td>";
                echo "<td><a class=\"btn cyan waves-effect waves-yellow  modal-trigger\" name=\"$rowKlientoVardas $rowKlientoPavarde\" id=\"$rowKlientoId\" href=\"#modal1\" onclick=\"vardas(this.getAttribute('name'), this.id)\"><i class=\"material-icons ikonos\">note_add</i></a></td>";
                echo "</tr>";
            }
            echo "</table>";
        }

       
        

    

   

?>

