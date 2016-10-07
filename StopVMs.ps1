 $Conn = Get-AutomationConnection -Name AzureRunAsConnection
 Add-AzureRMAccount -ServicePrincipal -Tenant $Conn.TenantID `
 -ApplicationId $Conn.ApplicationID -CertificateThumbprint $Conn.CertificateThumbprint
 
$VSSubID = "8bae2860-70c1-4614-b55a-60e97f4248dc"
Set-AzureRmContext -SubscriptionID $VSSubID

Get-AzureRmVm | Stop-AzureRmVM -force

 # Stop-AzureRmVM -Name 'UbuntuPlayground' -ResourceGroupName 'OSSWorld' -Force
 # Stop-AzureRmVM -Name 'JenkMastervm' -ResourceGroupName 'Jenkins' -Force
 # Stop-AzureRmVM -Name 'JenkSlave0vm' -ResourceGroupName 'Jenkins' -Force
 # Stop-AzureRmVM -Name 'LinuxA' -ResourceGroupName 'PeeringLab' -Force
 # Stop-AzureRmVM -Name 'LinuxB' -ResourceGroupName 'PeeringLab' -Force
# Stop-AzureRmVM -Name 'ImperfectSrv01' -ResourceGroupName 'ImperfectLab' -Force
#  Stop-AzureRmVM -Name 'ImperfectLabN02' -ResourceGroupName 'ImperfectLab' -Force
 # Stop-AzureRmVM -Name 'ImperfectDC01' -ResourceGroupName 'ImperfectLab' -Force
 # Stop-AzureRmVM -Name 'ImperfectDNS' -ResourceGroupName 'ImperfectLab' -Force