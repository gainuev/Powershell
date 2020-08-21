Import-Module activedirectory
$name_user = read-host "Введите логин пользователя"
$Comp_s = Get-ADComputer -Filter * -Properties *
ForEach ($name_comp in $Comp_s)
{if (Test-Path ("\\" + $name_comp.Name + "\C$\ConsUserData\")) {$name_comp.Name | ForEach-Object{Copy-Item -Path "\\mf-fs\cons\ConsultantPlus.*" -Destination ("\\" + $name_comp.Name + "\C$\Users\Public\Desktop")}}} 