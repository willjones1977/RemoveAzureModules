ForEach ($module in (Get-Module -ListAvailable Az*).Name | Get-Unique) {
    Write-Host "Removing Module $module"
    Uninstall-Module $module -Force
}