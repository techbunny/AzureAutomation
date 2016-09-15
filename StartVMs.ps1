 $Conn = Get-AutomationConnection -Name AzureRunAsConnection
 Add-AzureRMAccount -ServicePrincipal -Tenant $Conn.TenantID `
 -ApplicationId $Conn.ApplicationID -CertificateThumbprint $Conn.CertificateThumbprint
 
 ## Start-AzureRmVM -Name 'UbuntuPlayground' -ResourceGroupName 'OSSWorld'