class Auto{
    [string]$Hersteller
    [string]$Modell
    [string]$Leistung
    [string]$Verbrauch
    [string]$Baujahr
    [int]$KilometerStand
    [string]$Kennzeichen

    [bool]$DoorClosed


    Auto([bool]$doorstate)
    {
        $this.DoorClosed = $doorstate
    }


    fahren($distanz)
    {
        if($this.DoorClosed -eq $true)
        {
            $this.KilometerStand += $distanz
        }
    }
}


class Mitarbeiter{

    [string]$Name
    [Auto]$myCar


    [void]geheAufReise($ort, $km)
    {
        $this.myCar.fahren($km)
    }
}


$car = [Auto]::new($true)
$car.fahren(234)

$Brenner = [Mitarbeiter]::new()
$Brenner.Name = "Sebastian Brenner"
$Brenner.myCar = $car

$Brenner.geheAufReise("Hamburg", 700)

$car

