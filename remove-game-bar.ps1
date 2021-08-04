$packages = @(
"Microsoft.Xbox.TCUI"
"Microsoft.XboxApp"
"Microsoft.XboxGameCallableUI"
"Microsoft.XboxGameOverlay"
"Microsoft.XboxGamingOverlay"
"Microsoft.XboxIdentityProvider"
"Microsoft.XboxLive"
"Microsoft.XboxSpeechToTextOverlay"
)

ForEach ($packages in $packages) {
Get-AppxPackage -Name $packages -AllUsers | Remove-AppxPackage

Get-AppXProvisionedPackage -Online |
where DisplayName -EQ $packages |
Remove-AppxProvisionedPackage -Online
} 