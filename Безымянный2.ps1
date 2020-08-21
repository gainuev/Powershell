import-module activedirectory

import-csv d:\AllComputers.csv | foreach {
$a=$_.name
$a | out-file d:\a.txt -append
Get-WmiObject -Class Win32_Processor -ComputerName $a | out-file d:\a.txt -append
Get-WmiObject -computername $a Win32_Physicalmemory | Select-Object capacity, DeviceLocator | out-file d:\a.txt -append

}

