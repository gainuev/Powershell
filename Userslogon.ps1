$Time = Get-ADUser -filter * -properties lastlogondate |where {$_.lastlogondate -like "*2019*"}|select-object Name,lastlogondate

 


