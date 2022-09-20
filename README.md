# VMware-PS
PowerShell cmdlets, statements, and scripts related to VMware.PowerCLI

![PowerShell](https://repository-images.githubusercontent.com/221074232/158c2480-5262-11ea-8af0-452a86d9e56d)

##### Ignore Self-Signed Cert Errors on Connect
        Set-PowerCLIConfiguration -InvalidCertificateAction Ignore

##### Connect to Vcenter
        Connect-VIServer vcenter.<DOMAIN>.<DOAMAIN>

##### Get Host Info from a Cluster
        Get-Cluster uszit-test-01 | Get-VMHost | select * 