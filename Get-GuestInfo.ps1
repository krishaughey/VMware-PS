Get-VM | %{
    $guest = $_ | Get-VMGuest
    $vm  = "" | Select VMname, Hostname, OSFullName, IPAddr1, IPAddr2, State, ToolsVersion
    $vm.VMname = $_.Name
    $vm.Hostname = $guest.Hostname
    $vm.OSFullName = $guest.OSFullname
    $vm.IPAddr1 = $guest.IPAddress[0]
    $vm.IPAddr2 = $guest.IPAddress[1]
    $vm.State = $guest.State
        $vm.ToolsVersion = $guest.ToolsVersion
    $vm
  } | Export-Csv "~/Downloads/VMGuest_Report.csv" -noTypeInformation 
