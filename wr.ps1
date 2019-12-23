$url = "https://tazergy.com/kaseya/tazergy/wsasme.exe"
$output = "C:\tazergy-working\installs\wsasme.exe"
$folder = "c:\tazergy-working"

if (-not (Test-Path -LiteralPath $folder)) {
    New-Item -Path $folder -ItemType Directory -ErrorAction Stop | Out-Null
    New-Item -Path "$folder\installs" -ItemType Directory -ErrorAction Stop | Out-Null
    New-Item -Path "$folder\scripts" -ItemType Directory -ErrorAction Stop | Out-Null
    New-Item -Path "$folder\images" -ItemType Directory -ErrorAction Stop | Out-Null
    New-Item -Path "$folder\variables" -ItemType Directory -ErrorAction Stop | Out-Null
    } Else { 
        Out-Null
        }

Import-Module BitsTransfer
Start-BitsTransfer -Source $url -Destination $output

C:\tazergy-working\installs\wsasme.exe /silent
