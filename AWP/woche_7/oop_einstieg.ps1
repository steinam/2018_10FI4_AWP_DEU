class Person{

    [string]$Name
    [string]$Vorname
    [string]$Ort





    #Methode, die einen String zurückgibt
    [string]sprechen()
    {
        return "Mein Name ist "+ $this.Name
    }


    #Methode gibt nichts zurück
    [void]laufen([string]$Wohin){
        
        $this.ort = $Wohin
    }

    [string]getDirection(){

        return Write-Host "Ich laufe nach" + $this.Ort
    }


    #Konstruktor
    #Methode, die beim Erzeugen eies Objektes
    #automatisch aufgerufen
    Person([string]$Name)
    {
        $this.Name = $Name
    }

    Person([string]$Name, [string]$Vorname)
    {


        $this.Name = $Name
        $this.Vorname = $Vorname
        

    }

    Person([string]$Name, [string]$Vorname, [string]$Ort)
    {
        $this.Name = $Name
        $this.Vorname = $Vorname
        $this.Ort = $Ort
    }

}


#Nutzung der 3 Konstruktoren
$Christoph = [Person]::new("Christoph")
$Alex = [Person]::new("Alexander", "Peter")
$Horst = [Person]::new("Seehofer", "Horst", "Straubing")
$susanne = [Person]::new("Susanne", "Vollhorst"






