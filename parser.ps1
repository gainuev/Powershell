$file=Get-Content -Literalpath D:\users.txt
if ($file -like "*Гайнуев*") {
Write-Host  "OK"
Stop-Process -ProcessName Calculator 
} 
  