$properties = Get-Process | Get-Member -MemberType Property | Select-Object -ExpandProperty Name
$properties |  Out-File output-process.txt
Write-Host  $properties.Count
