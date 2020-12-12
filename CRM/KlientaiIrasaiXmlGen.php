<?php



$pris = new PDO('mysql:host=localhost;dbname=crm', 'root', '');
$pris->query("SET character_set_results=utf8mb4");

$xml = new XMLWriter();
$xml->openMemory();
$xml->startDocument('1.0', 'UTF-8');
$xml->startElement('Klientai');

$sqlKlientai = "SELECT * FROM klientai";

$klientai = $pris->prepare($sqlKlientai);
$klientai->execute();

    while ($klientas = $klientai->fetch(PDO::FETCH_ASSOC)) {
    $sqlIrasai = "SELECT * FROM irasai WHERE klientas_id = ". $klientas['id'];
        $irasai = $pris->prepare($sqlIrasai);
        $irasai->execute();
    
        
        $xml->startElement("Klientas");
            $xml->startElement("id");
            $xml->text($klientas['id']);
            $xml->endElement();

            $xml->startElement("vardas");
            $xml->text($klientas['vardas']);
            $xml->endElement();

            $xml->startElement("pavarde");
            $xml->text($klientas['pavarde']);
            $xml->endElement();

            $xml->startElement("elPastas");
            $xml->text($klientas['elPastas']);
            $xml->endElement();

            $xml->startElement("telefonas");
            $xml->text($klientas['telefonas']);
            $xml->endElement();

            $xml->startElement("miestas");
            $xml->text($klientas['miestas']);
            $xml->endElement();
            
            
            $xml->startElement("Irasai");
            if($irasai){
                while ($irasas = $irasai->fetch(PDO::FETCH_ASSOC)) {
                    $xml->startElement("Irasas");
                        $xml->startElement("id");
                        $xml->text($irasas['id']);
                        $xml->endElement();
        
                        $xml->startElement("data_ir_laikas");
                        $xml->text($irasas['data_laikas']);
                        $xml->endElement();
        
                        $xml->startElement("klientas_id");
                        $xml->text($irasas['klientas_id']);
                        $xml->endElement();
        
                        $xml->startElement("vadybininkas");
                        $xml->text($irasas['vadybininkas']);
                        $xml->endElement();
        
                        $xml->startElement("irasas");
                        $xml->text($irasas['irasas']);
                        $xml->endElement();
        
                        $xml->startElement("tipas");
                        $xml->text($irasas['tipas']);
                        $xml->endElement();
                        
                    $xml->endElement();
                }
            }
            $xml->endElement();

        

        $xml->endElement();
    }
$xml->endElement();
$xml->endDocument();
file_put_contents("KlientaiIrasai.xml", $xml->outputMemory());
echo $xml->outputMemory();
?>