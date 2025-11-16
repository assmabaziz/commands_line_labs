$dirTimes = @()
$psTimes = @()

for ($i = 1; $i -le 5; $i++){
$dirTime = (Measure-Command {dir > $null}).TotalMilliseconds
$dirTimes += $dirTime
$psTime = (Measure-Command {ps > $null}).TotalMilliseconds
$psTimes += $psTime
}
Write-Host "Min command DIR: " ($dirTimes | Measure-Object -Minimum).Minimum
Write-Host "Max command DIR: " ($dirTimes | Measure-Object -Maximum).Maximum
Write-Host "Average command DIR: " ($dirTimes | Measure-Object -Average).Average


Write-Host "Min command PS: " ($psTimes | Measure-Object -Minimum).Minimum
Write-Host "Max command PS: " ($psTimes | Measure-Object -Maximum).Maximum
Write-Host "Average command PS: " ($psTimes | Measure-Object -Average).Average

