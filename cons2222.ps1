Import-Module activedirectory
$name_user = read-host "Введите логин пользователя"
$Comp_s = Get-ADComputer -Filter * -Properties *
ForEach ($name_comp in $Comp_s)
{if ((Test-Connection -ComputerName $name_comp.Name) -and (Test-Path ("\\" + $name_comp.Name + "\C$\ConsUserData\")))
{$name_comp.Name  | ForEach-Object {Get-ChildItem -Path ("\\" + $name_comp.Name + "\C$\Users\") -Filter "ConsultantPlus.lnk" -Recurse | del;
Copy-Item -Path "\\mf-fs\cons\ConsultantPlus.*" -Destination ("\\" + $name_comp.Name + "\C$\Users\Public\Desktop")}}} 
echo "Готово"