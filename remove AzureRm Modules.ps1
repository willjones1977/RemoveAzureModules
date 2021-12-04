ForEach ($module in (Get-Module -ListAvailable AzureRM*).Name | Get-Unique) {
    Write-Host "Removing Module $module"
    Uninstall-Module $module -Force
}