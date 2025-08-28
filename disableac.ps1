# Wyłącza Centrum akcji (Notification Center) na pasku zadań
$regPath = "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer"
if (!(Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}
Set-ItemProperty -Path $regPath -Name "DisableNotificationCenter" -Value 1

# Restartuje explorer.exe aby ustawienie zadziałało natychmiast
Stop-Process -Name explorer -Force
Start-Process explorer
