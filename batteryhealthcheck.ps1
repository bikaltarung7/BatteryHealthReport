#paramteres
# $path to store the report
# $open to open report after it's generated
param ($path = "D:\Documents\Battery", [switch] $open)

#filename is the current date
$filename = Get-Date -Format 'dd-MMM-yyyy'
$file = "$path\$filename.html"

#check if path exists. If not creates the folder
If(!(Test-Path -Path "$path"))
{
    New-Item  -ItemType Directory -Path $path
}

#generate the report
powercfg /batteryreport -output "$file"

#open the report
If($open){
    Invoke-Item $file
}



