$path = "D:\Documents\Battery"
$filename = Get-Date -Format 'dd-MMM-yyyy'

If(!(Test-Path -Path "D:\Documents\Battery"))
{
    New-Item  -ItemType Directory -Path $path
}

powercfg /batteryreport -output "D:\Documents\Battery\$filename.html"
