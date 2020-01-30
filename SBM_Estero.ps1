$url1 = "https://cdn.cloudbackup.management/maxdownloads/mxb-windows-x86_x64.exe"
$filelocation1 = "C:\Temp\mxb-windows-x86_x64.exe"
$wc = New-Object System.Net.WebClient
$start_time = Get-Date
# $rename = Read-Host -Prompt 'Input install Exe name form Solarwinds'
$rename = "swibm#823367cd-e5a1-4cef-86f1-473efc86dfa0#5038#.exe"


Set-ExecutionPolicy Bypass

[System.Net.ServicePointManager]::ServerCertificateValidationCallback = {$true}
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$wc.DownloadFile($url1, $filelocation1)

Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"

Rename-Item -Path "C:\Temp\mxb-windows-x86_x64.exe" -NewName "C:\Temp\$rename"

& "C:\Temp\$rename"
