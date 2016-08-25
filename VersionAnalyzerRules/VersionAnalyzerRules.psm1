<#
.SYNOPSIS
    Test commands against PowerShell version 3
.DESCRIPTION
    Test commands against PowerShell version 3
.EXAMPLE
    Test-PowerShellv3Command -CommandAst $CommandAst
.INPUTS
    [System.Management.Automation.Language.CommandAst]
.OUTPUTS
    [PSCustomObject[]]
.NOTES
    None.
#>
Function Test-PowerShellv3Command {
	[CmdletBinding()]
	[OutputType([PSCustomObject[]])]
	Param (
		[Parameter(Mandatory = $true)]
		[ValidateNotNullOrEmpty()]
		[System.Management.Automation.Language.CommandAst]$CommandAst
	)
	
	Process {
		$results = @()
		
		$cmds = @(
            "disable-pstrace",
            "disable-pswsmancombinedtrace",
            "disable-wsmantrace",
            "enable-pstrace",
            "enable-pswsmancombinedtrace",
            "enable-wsmantrace",
            "get-isesnippet",
            "get-logproperties",
            "import-isesnippet",
            "invoke-asworkflow",
            "new-isesnippet",
            "new-psworkflowsession",
            "set-logproperties",
            "start-trace",
            "stop-trace",
            "add-bitsfile",
            "add-jobtrigger",
            "complete-bitstransfer",
            "connect-pssession",
            "convertfrom-json",
            "convertto-json",
            "disable-jobtrigger",
            "disable-scheduledjob",
            "disconnect-pssession",
            "enable-jobtrigger",
            "enable-scheduledjob",
            "get-applockerfileinformation",
            "get-applockerpolicy",
            "get-bitstransfer",
            "get-cimassociatedinstance",
            "get-cimclass",
            "get-ciminstance",
            "get-cimsession",
            "get-controlpanelitem",
            "get-jobtrigger",
            "get-scheduledjob",
            "get-scheduledjoboption",
            "get-troubleshootingpack",
            "get-typedata",
            "invoke-cimmethod",
            "invoke-restmethod",
            "invoke-troubleshootingpack",
            "invoke-webrequest",
            "new-applockerpolicy",
            "new-ciminstance",
            "new-cimsession",
            "new-cimsessionoption",
            "new-jobtrigger",
            "new-pssessionconfigurationfile",
            "new-pstransportoption",
            "new-psworkflowexecutionoption",
            "new-scheduledjoboption",
            "new-winevent",
            "receive-pssession",
            "register-cimindicationevent",
            "register-scheduledjob",
            "remove-bitstransfer",
            "remove-ciminstance",
            "remove-cimsession",
            "remove-jobtrigger",
            "remove-typedata",
            "rename-computer",
            "resume-bitstransfer",
            "resume-job",
            "save-help",
            "set-applockerpolicy",
            "set-bitstransfer",
            "set-ciminstance",
            "set-jobtrigger",
            "set-scheduledjob",
            "set-scheduledjoboption",
            "show-command",
            "show-controlpanelitem",
            "start-bitstransfer",
            "suspend-bitstransfer",
            "suspend-job",
            "test-applockerpolicy",
            "test-pssessionconfigurationfile",
            "unblock-file",
            "unregister-scheduledjob",
            "update-help"
		)
		
		If ($CommandAst.GetCommandName() -eq $null) {
			Return $results
		} Else {
			$cmdName = $CommandAst.GetCommandName().ToLower();
		}
		
		If ($cmdName -in $cmds) {
			$result = [PSCustomObject]@{
				"Message" = "$cmdName might require PowerShell version 3 or higher.";
				"Extent" = $CommandAst.Extent;
				"RuleName" = "Test-PowerShellv3Command";
				"Severity" = "Warning"
			}
			$results += $result
		}
		
		Return $results
	}
}

<#
.SYNOPSIS
    Test commands against PowerShell version 4
.DESCRIPTION
    Test commands against PowerShell version 4
.EXAMPLE
    Test-PowerShellv4Command -CommandAst $CommandAst
.INPUTS
    [System.Management.Automation.Language.CommandAst]
.OUTPUTS
    [PSCustomObject[]]
.NOTES
    None.
#>
Function Test-PowerShellv4Command {
	[CmdletBinding()]
	[OutputType([PSCustomObject[]])]
	Param (
		[Parameter(Mandatory = $true)]
		[ValidateNotNullOrEmpty()]
		[System.Management.Automation.Language.CommandAst]$CommandAst
	)
	
	Process {
		$results = @()
		
		$cmds = @(
            "get-dscconfiguration",
            "get-dsclocalconfigurationmanager",
            "get-dscresource",
            "get-filehash",
            "new-dscchecksum",
            "restore-dscconfiguration",
            "test-dscconfiguration",
            "export-binarymilog",
            "import-binarymilog",
            "set-dsclocalconfigurationmanager",
            "start-dscconfiguration"
		)
		
		If ($CommandAst.GetCommandName() -eq $null) {
			Return $results
		} Else {
			$cmdName = $CommandAst.GetCommandName().ToLower();
		}
		
		If ($cmdName -in $cmds) {
			$result = [PSCustomObject]@{
				"Message" = "$cmdName might require PowerShell version 4 or higher.";
				"Extent" = $CommandAst.Extent;
				"RuleName" = "Test-PowerShellv4Command";
				"Severity" = "Warning"
			}
			$results += $result
		}
		
		Return $results
	}
}

<#
.SYNOPSIS
    Test commands against PowerShell version 5
.DESCRIPTION
    Test commands against PowerShell version 5
.EXAMPLE
    Test-PowerShellv5Command -CommandAst $CommandAst
.INPUTS
    [System.Management.Automation.Language.CommandAst]
.OUTPUTS
    [PSCustomObject[]]
.NOTES
    None.
#>
Function Test-PowerShellv5Command {
	[CmdletBinding()]
	[OutputType([PSCustomObject[]])]
	Param (
		[Parameter(Mandatory = $true)]
		[ValidateNotNullOrEmpty()]
		[System.Management.Automation.Language.CommandAst]$CommandAst
	)
	
	Process {
		$results = @()
		
		$cmds = @(
            "compress-archive",
            "convertfrom-sddlstring",
            "disable-dscdebug",
            "disable-networkswitchethernetport",
            "disable-networkswitchfeature",
            "disable-networkswitchvlan",
            "enable-dscdebug",
            "enable-networkswitchethernetport",
            "enable-networkswitchfeature",
            "enable-networkswitchvlan",
            "expand-archive",
            "export-odataendpointproxy",
            "find-dscresource",
            "find-module",
            "find-script",
            "format-hex",
            "get-dscconfigurationstatus",
            "get-installedmodule",
            "get-installedscript",
            "get-networkswitchethernetport",
            "get-networkswitchfeature",
            "get-networkswitchglobaldata",
            "get-networkswitchvlan",
            "get-psrepository",
            "import-powershelldatafile",
            "install-module",
            "install-script",
            "new-guid",
            "new-networkswitchvlan",
            "new-scriptfileinfo",
            "new-temporaryfile",
            "publish-module",
            "publish-script",
            "register-psrepository",
            "remove-dscconfigurationdocument",
            "remove-networkswitchethernetportipaddress",
            "remove-networkswitchvlan",
            "restore-networkswitchconfiguration",
            "save-module",
            "save-networkswitchconfiguration",
            "save-script",
            "set-networkswitchethernetportipaddress",
            "set-networkswitchportmode",
            "set-networkswitchportproperty",
            "set-networkswitchvlanproperty",
            "set-psrepository",
            "stop-dscconfiguration",
            "test-scriptfileinfo",
            "uninstall-module",
            "uninstall-script",
            "unregister-psrepository",
            "update-dscconfiguration",
            "update-module",
            "update-modulemanifest",
            "update-script",
            "update-scriptfileinfo",
            "clear-recyclebin",
            "convertfrom-string",
            "convert-string",
            "debug-job",
            "debug-runspace",
            "disable-runspacedebug",
            "enable-runspacedebug",
            "enter-pshostprocess",
            "exit-pshostprocess",
            "find-package",
            "find-packageprovider",
            "get-clipboard",
            "get-cmsmessage",
            "get-itempropertyvalue",
            "get-package",
            "get-packageprovider",
            "get-packagesource",
            "get-pshostprocessinfo",
            "get-pssessioncapability",
            "get-runspace",
            "get-runspacedebug",
            "import-packageprovider",
            "install-package",
            "install-packageprovider",
            "invoke-dscresource",
            "new-psrolecapabilityfile",
            "protect-cmsmessage",
            "publish-dscconfiguration",
            "register-argumentcompleter",
            "register-packagesource",
            "save-package",
            "set-clipboard",
            "set-packagesource",
            "uninstall-package",
            "unprotect-cmsmessage",
            "unregister-packagesource",
            "wait-debugger",
            "write-information"
		)
		
		If ($CommandAst.GetCommandName() -eq $null) {
			Return $results
		} Else {
			$cmdName = $CommandAst.GetCommandName().ToLower();
		}
		
		If ($cmdName -in $cmds) {
			$result = [PSCustomObject]@{
				"Message" = "$cmdName might require PowerShell version 5 or higher.";
				"Extent" = $CommandAst.Extent;
				"RuleName" = "Test-PowerShellv5Command";
				"Severity" = "Warning"
			}
			$results += $result
		}
		
		Return $results
	}
}

<#
.SYNOPSIS
    Test commands against Windows 8.1/Windows Server 2012 R2
.DESCRIPTION
    Test commands against Windows 8.1/Windows Server 2012 R2
.EXAMPLE
    Test-OS62Command -CommandAst $CommandAst
.INPUTS
    [System.Management.Automation.Language.CommandAst]
.OUTPUTS
    [PSCustomObject[]]
.NOTES
    None.
#>
Function Test-OS62Command {
	[CmdletBinding()]
	[OutputType([PSCustomObject[]])]
	Param (
		[Parameter(Mandatory = $true)]
		[ValidateNotNullOrEmpty()]
		[System.Management.Automation.Language.CommandAst]$CommandAst
	)
	
	Process {
		$results = @()
		
		$cmds = @(
            "add-provisionedappxpackage",
            "apply-windowsunattend",
            "flush-volume",
            "get-provisionedappxpackage",
            "initialize-volume",
            "move-smbclient",
            "remove-provisionedappxpackage",
            "write-filesystemcache",
            "add-bcdatacacheextension",
            "add-bitlockerkeyprotector",
            "add-dnsclientnrptrule",
            "add-dtcclustertmmapping",
            "add-initiatoridtomaskingset",
            "add-mppreference",
            "add-neteventnetworkadapter",
            "add-neteventpacketcaptureprovider",
            "add-neteventprovider",
            "add-neteventvmnetworkadapter",
            "add-neteventvmswitch",
            "add-netiphttpscertbinding",
            "add-netlbfoteammember",
            "add-netlbfoteamnic",
            "add-netnatexternaladdress",
            "add-netnatstaticmapping",
            "add-netswitchteammember",
            "add-odbcdsn",
            "add-partitionaccesspath",
            "add-physicaldisk",
            "add-printer",
            "add-printerdriver",
            "add-printerport",
            "add-targetporttomaskingset",
            "add-virtualdisktomaskingset",
            "add-vpnconnection",
            "add-vpnconnectionroute",
            "add-vpnconnectiontriggerapplication",
            "add-vpnconnectiontriggerdnsconfiguration",
            "add-vpnconnectiontriggertrustednetwork",
            "backup-bitlockerkeyprotector",
            "block-smbshareaccess",
            "clear-assignedaccess",
            "clear-bccache",
            "clear-bitlockerautounlock",
            "clear-disk",
            "clear-dnsclientcache",
            "clear-filestoragetier",
            "close-smbopenfile",
            "close-smbsession",
            "connect-iscsitarget",
            "connect-virtualdisk",
            "copy-netfirewallrule",
            "copy-netipsecmainmodecryptoset",
            "copy-netipsecmainmoderule",
            "copy-netipsecphase1authset",
            "copy-netipsecphase2authset",
            "copy-netipsecquickmodecryptoset",
            "copy-netipsecrule",
            "debug-mmappprelaunch",
            "disable-bc",
            "disable-bcdowngrading",
            "disable-bcserveonbattery",
            "disable-bitlocker",
            "disable-bitlockerautounlock",
            "disable-damanualentrypointselection",
            "disable-mmagent",
            "disable-netadapter",
            "disable-netadapterbinding",
            "disable-netadapterchecksumoffload",
            "disable-netadapterencapsulatedpackettaskoffload",
            "disable-netadapteripsecoffload",
            "disable-netadapterlso",
            "disable-netadapterpowermanagement",
            "disable-netadapterqos",
            "disable-netadapterrdma",
            "disable-netadapterrsc",
            "disable-netadapterrss",
            "disable-netadaptersriov",
            "disable-netadaptervmq",
            "disable-netdnstransitionconfiguration",
            "disable-netfirewallrule",
            "disable-netiphttpsprofile",
            "disable-netipsecmainmoderule",
            "disable-netipsecrule",
            "disable-netnattransitionconfiguration",
            "disable-odbcperfcounter",
            "disable-physicaldiskindication",
            "disable-scheduledtask",
            "disable-smbdelegation",
            "disable-storageenclosureidentification",
            "disable-wdacbidtrace",
            "disconnect-iscsitarget",
            "disconnect-virtualdisk",
            "dismount-diskimage",
            "enable-bcdistributed",
            "enable-bcdowngrading",
            "enable-bchostedclient",
            "enable-bchostedserver",
            "enable-bclocal",
            "enable-bcserveonbattery",
            "enable-bitlocker",
            "enable-bitlockerautounlock",
            "enable-damanualentrypointselection",
            "enable-mmagent",
            "enable-netadapter",
            "enable-netadapterbinding",
            "enable-netadapterchecksumoffload",
            "enable-netadapterencapsulatedpackettaskoffload",
            "enable-netadapteripsecoffload",
            "enable-netadapterlso",
            "enable-netadapterpowermanagement",
            "enable-netadapterqos",
            "enable-netadapterrdma",
            "enable-netadapterrsc",
            "enable-netadapterrss",
            "enable-netadaptersriov",
            "enable-netadaptervmq",
            "enable-netdnstransitionconfiguration",
            "enable-netfirewallrule",
            "enable-netiphttpsprofile",
            "enable-netipsecmainmoderule",
            "enable-netipsecrule",
            "enable-netnattransitionconfiguration",
            "enable-odbcperfcounter",
            "enable-physicaldiskindication",
            "enable-scheduledtask",
            "enable-smbdelegation",
            "enable-storageenclosureidentification",
            "enable-wdacbidtrace",
            "export-bccachepackage",
            "export-bcsecretkey",
            "export-scheduledtask",
            "find-netipsecrule",
            "find-netroute",
            "format-volume",
            "get-appbackgroundtask",
            "get-appxlasterror",
            "get-appxlog",
            "get-assignedaccess",
            "get-bcclientconfiguration",
            "get-bccontentserverconfiguration",
            "get-bcdatacache",
            "get-bcdatacacheextension",
            "get-bchashcache",
            "get-bchostedcacheserverconfiguration",
            "get-bcnetworkconfiguration",
            "get-bcstatus",
            "get-bitlockervolume",
            "get-clusteredscheduledtask",
            "get-daclientexperienceconfiguration",
            "get-daconnectionstatus",
            "get-daentrypointtableitem",
            "get-disk",
            "get-diskimage",
            "get-dnsclient",
            "get-dnsclientcache",
            "get-dnsclientglobalsetting",
            "get-dnsclientnrptglobal",
            "get-dnsclientnrptpolicy",
            "get-dnsclientnrptrule",
            "get-dnsclientserveraddress",
            "get-dtc",
            "get-dtcadvancedhostsetting",
            "get-dtcadvancedsetting",
            "get-dtcclusterdefault",
            "get-dtcclustertmmapping",
            "get-dtcdefault",
            "get-dtclog",
            "get-dtcnetworksetting",
            "get-dtctransaction",
            "get-dtctransactionsstatistics",
            "get-dtctransactionstracesession",
            "get-dtctransactionstracesetting",
            "get-fileintegrity",
            "get-filestoragetier",
            "get-initiatorid",
            "get-initiatorport",
            "get-iscsiconnection",
            "get-iscsisession",
            "get-iscsitarget",
            "get-iscsitargetportal",
            "get-maskingset",
            "get-mmagent",
            "get-mpcomputerstatus",
            "get-mppreference",
            "get-mpthreat",
            "get-mpthreatcatalog",
            "get-mpthreatdetection",
            "get-ncsipolicyconfiguration",
            "get-net6to4configuration",
            "get-netadapter",
            "get-netadapteradvancedproperty",
            "get-netadapterbinding",
            "get-netadapterchecksumoffload",
            "get-netadapterencapsulatedpackettaskoffload",
            "get-netadapterhardwareinfo",
            "get-netadapteripsecoffload",
            "get-netadapterlso",
            "get-netadapterpowermanagement",
            "get-netadapterqos",
            "get-netadapterrdma",
            "get-netadapterrsc",
            "get-netadapterrss",
            "get-netadaptersriov",
            "get-netadaptersriovvf",
            "get-netadapterstatistics",
            "get-netadaptervmq",
            "get-netadaptervmqqueue",
            "get-netadaptervport",
            "get-netcompartment",
            "get-netconnectionprofile",
            "get-netdnstransitionconfiguration",
            "get-netdnstransitionmonitoring",
            "get-neteventnetworkadapter",
            "get-neteventpacketcaptureprovider",
            "get-neteventprovider",
            "get-neteventsession",
            "get-neteventvmnetworkadapter",
            "get-neteventvmswitch",
            "get-netfirewalladdressfilter",
            "get-netfirewallapplicationfilter",
            "get-netfirewallinterfacefilter",
            "get-netfirewallinterfacetypefilter",
            "get-netfirewallportfilter",
            "get-netfirewallprofile",
            "get-netfirewallrule",
            "get-netfirewallsecurityfilter",
            "get-netfirewallservicefilter",
            "get-netfirewallsetting",
            "get-netipaddress",
            "get-netipconfiguration",
            "get-netiphttpsconfiguration",
            "get-netiphttpsstate",
            "get-netipinterface",
            "get-netipsecdospsetting",
            "get-netipsecmainmodecryptoset",
            "get-netipsecmainmoderule",
            "get-netipsecmainmodesa",
            "get-netipsecphase1authset",
            "get-netipsecphase2authset",
            "get-netipsecquickmodecryptoset",
            "get-netipsecquickmodesa",
            "get-netipsecrule",
            "get-netipv4protocol",
            "get-netipv6protocol",
            "get-netisatapconfiguration",
            "get-netlbfoteam",
            "get-netlbfoteammember",
            "get-netlbfoteamnic",
            "get-netnat",
            "get-netnatexternaladdress",
            "get-netnatglobal",
            "get-netnatsession",
            "get-netnatstaticmapping",
            "get-netnattransitionconfiguration",
            "get-netnattransitionmonitoring",
            "get-netneighbor",
            "get-netoffloadglobalsetting",
            "get-netprefixpolicy",
            "get-netqospolicy",
            "get-netroute",
            "get-netswitchteam",
            "get-netswitchteammember",
            "get-nettcpconnection",
            "get-nettcpsetting",
            "get-netteredoconfiguration",
            "get-netteredostate",
            "get-nettransportfilter",
            "get-netudpendpoint",
            "get-netudpsetting",
            "get-odbcdriver",
            "get-odbcdsn",
            "get-odbcperfcounter",
            "get-offloaddatatransfersetting",
            "get-partition",
            "get-partitionsupportedsize",
            "get-pcsvdevice",
            "get-physicaldisk",
            "get-printconfiguration",
            "get-printer",
            "get-printerdriver",
            "get-printerport",
            "get-printerproperty",
            "get-printjob",
            "get-resiliencysetting",
            "get-scheduledtask",
            "get-scheduledtaskinfo",
            "get-smbbandwidthlimit",
            "get-smbclientconfiguration",
            "get-smbclientnetworkinterface",
            "get-smbconnection",
            "get-smbdelegation",
            "get-smbmapping",
            "get-smbmultichannelconnection",
            "get-smbmultichannelconstraint",
            "get-smbopenfile",
            "get-smbserverconfiguration",
            "get-smbservernetworkinterface",
            "get-smbsession",
            "get-smbshare",
            "get-smbshareaccess",
            "get-smbwitnessclient",
            "get-startapps",
            "get-storageenclosure",
            "get-storageenclosurevendordata",
            "get-storagejob",
            "get-storagenode",
            "get-storagepool",
            "get-storageprovider",
            "get-storagereliabilitycounter",
            "get-storagesetting",
            "get-storagesubsystem",
            "get-storagetier",
            "get-storagetiersupportedsize",
            "get-supportedclustersizes",
            "get-supportedfilesystems",
            "get-targetport",
            "get-targetportal",
            "get-virtualdisk",
            "get-virtualdisksupportedsize",
            "get-volume",
            "get-volumecorruptioncount",
            "get-volumescrubpolicy",
            "get-vpnconnection",
            "get-vpnconnectiontrigger",
            "get-wdacbidtrace",
            "get-windowsdeveloperlicense",
            "grant-smbshareaccess",
            "hide-virtualdisk",
            "import-bccachepackage",
            "import-bcsecretkey",
            "initialize-disk",
            "install-dtc",
            "lock-bitlocker",
            "mount-diskimage",
            "move-smbwitnessclient",
            "new-daentrypointtableitem",
            "new-eapconfiguration",
            "new-iscsitargetportal",
            "new-maskingset",
            "new-netadapteradvancedproperty",
            "new-neteventsession",
            "new-netfirewallrule",
            "new-netipaddress",
            "new-netiphttpsconfiguration",
            "new-netipsecdospsetting",
            "new-netipsecmainmodecryptoset",
            "new-netipsecmainmoderule",
            "new-netipsecphase1authset",
            "new-netipsecphase2authset",
            "new-netipsecquickmodecryptoset",
            "new-netipsecrule",
            "new-netlbfoteam",
            "new-netnat",
            "new-netnattransitionconfiguration",
            "new-netneighbor",
            "new-netqospolicy",
            "new-netroute",
            "new-netswitchteam",
            "new-nettransportfilter",
            "new-partition",
            "new-scheduledtask",
            "new-scheduledtaskaction",
            "new-scheduledtaskprincipal",
            "new-scheduledtasksettingsset",
            "new-scheduledtasktrigger",
            "new-smbmapping",
            "new-smbmultichannelconstraint",
            "new-smbshare",
            "new-storagepool",
            "new-storagesubsystemvirtualdisk",
            "new-storagetier",
            "new-virtualdisk",
            "new-virtualdiskclone",
            "new-virtualdisksnapshot",
            "new-volume",
            "new-vpnserveraddress",
            "open-netgpo",
            "optimize-volume",
            "publish-bcfilecontent",
            "publish-bcwebcontent",
            "read-printernfctag",
            "register-clusteredscheduledtask",
            "register-dnsclient",
            "register-iscsisession",
            "register-scheduledtask",
            "register-storagesubsystem",
            "remove-bcdatacacheextension",
            "remove-bitlockerkeyprotector",
            "remove-daentrypointtableitem",
            "remove-dnsclientnrptrule",
            "remove-dtcclustertmmapping",
            "remove-initiatorid",
            "remove-initiatoridfrommaskingset",
            "remove-iscsitargetportal",
            "remove-maskingset",
            "remove-mppreference",
            "remove-mpthreat",
            "remove-netadapteradvancedproperty",
            "remove-neteventnetworkadapter",
            "remove-neteventpacketcaptureprovider",
            "remove-neteventprovider",
            "remove-neteventsession",
            "remove-neteventvmnetworkadapter",
            "remove-neteventvmswitch",
            "remove-netfirewallrule",
            "remove-netipaddress",
            "remove-netiphttpscertbinding",
            "remove-netiphttpsconfiguration",
            "remove-netipsecdospsetting",
            "remove-netipsecmainmodecryptoset",
            "remove-netipsecmainmoderule",
            "remove-netipsecmainmodesa",
            "remove-netipsecphase1authset",
            "remove-netipsecphase2authset",
            "remove-netipsecquickmodecryptoset",
            "remove-netipsecquickmodesa",
            "remove-netipsecrule",
            "remove-netlbfoteam",
            "remove-netlbfoteammember",
            "remove-netlbfoteamnic",
            "remove-netnat",
            "remove-netnatexternaladdress",
            "remove-netnatstaticmapping",
            "remove-netnattransitionconfiguration",
            "remove-netneighbor",
            "remove-netqospolicy",
            "remove-netroute",
            "remove-netswitchteam",
            "remove-netswitchteammember",
            "remove-nettransportfilter",
            "remove-odbcdsn",
            "remove-partition",
            "remove-partitionaccesspath",
            "remove-physicaldisk",
            "remove-printer",
            "remove-printerdriver",
            "remove-printerport",
            "remove-printjob",
            "remove-smbbandwidthlimit",
            "remove-smbmapping",
            "remove-smbmultichannelconstraint",
            "remove-smbshare",
            "remove-storagepool",
            "remove-storagetier",
            "remove-targetportfrommaskingset",
            "remove-virtualdisk",
            "remove-virtualdiskfrommaskingset",
            "remove-vpnconnection",
            "remove-vpnconnectionroute",
            "remove-vpnconnectiontriggerapplication",
            "remove-vpnconnectiontriggerdnsconfiguration",
            "remove-vpnconnectiontriggertrustednetwork",
            "rename-daentrypointtableitem",
            "rename-maskingset",
            "rename-netadapter",
            "rename-netfirewallrule",
            "rename-netiphttpsconfiguration",
            "rename-netipsecmainmodecryptoset",
            "rename-netipsecmainmoderule",
            "rename-netipsecphase1authset",
            "rename-netipsecphase2authset",
            "rename-netipsecquickmodecryptoset",
            "rename-netipsecrule",
            "rename-netlbfoteam",
            "rename-netswitchteam",
            "rename-printer",
            "repair-fileintegrity",
            "repair-virtualdisk",
            "repair-volume",
            "reset-bc",
            "reset-daclientexperienceconfiguration",
            "reset-daentrypointtableitem",
            "reset-dtclog",
            "reset-ncsipolicyconfiguration",
            "reset-net6to4configuration",
            "reset-netadapteradvancedproperty",
            "reset-netdnstransitionconfiguration",
            "reset-netiphttpsconfiguration",
            "reset-netisatapconfiguration",
            "reset-netteredoconfiguration",
            "reset-physicaldisk",
            "reset-storagereliabilitycounter",
            "resize-partition",
            "resize-storagetier",
            "resize-virtualdisk",
            "restart-netadapter",
            "restart-pcsvdevice",
            "restart-printjob",
            "resume-bitlocker",
            "resume-printjob",
            "revoke-smbshareaccess",
            "save-netgpo",
            "set-assignedaccess",
            "set-bcauthentication",
            "set-bccache",
            "set-bcdatacacheentrymaxage",
            "set-bcminsmblatency",
            "set-bcsecretkey",
            "set-clusteredscheduledtask",
            "set-daclientexperienceconfiguration",
            "set-daentrypointtableitem",
            "set-disk",
            "set-dnsclient",
            "set-dnsclientglobalsetting",
            "set-dnsclientnrptglobal",
            "set-dnsclientnrptrule",
            "set-dnsclientserveraddress",
            "set-dtcadvancedhostsetting",
            "set-dtcadvancedsetting",
            "set-dtcclusterdefault",
            "set-dtcclustertmmapping",
            "set-dtcdefault",
            "set-dtclog",
            "set-dtcnetworksetting",
            "set-dtctransaction",
            "set-dtctransactionstracesession",
            "set-dtctransactionstracesetting",
            "set-fileintegrity",
            "set-filestoragetier",
            "set-initiatorport",
            "set-iscsichapsecret",
            "set-mmagent",
            "set-mppreference",
            "set-ncsipolicyconfiguration",
            "set-net6to4configuration",
            "set-netadapter",
            "set-netadapteradvancedproperty",
            "set-netadapterbinding",
            "set-netadapterchecksumoffload",
            "set-netadapterencapsulatedpackettaskoffload",
            "set-netadapteripsecoffload",
            "set-netadapterlso",
            "set-netadapterpowermanagement",
            "set-netadapterqos",
            "set-netadapterrdma",
            "set-netadapterrsc",
            "set-netadapterrss",
            "set-netadaptersriov",
            "set-netadaptervmq",
            "set-netconnectionprofile",
            "set-netdnstransitionconfiguration",
            "set-neteventpacketcaptureprovider",
            "set-neteventprovider",
            "set-neteventsession",
            "set-netfirewalladdressfilter",
            "set-netfirewallapplicationfilter",
            "set-netfirewallinterfacefilter",
            "set-netfirewallinterfacetypefilter",
            "set-netfirewallportfilter",
            "set-netfirewallprofile",
            "set-netfirewallrule",
            "set-netfirewallsecurityfilter",
            "set-netfirewallservicefilter",
            "set-netfirewallsetting",
            "set-netipaddress",
            "set-netiphttpsconfiguration",
            "set-netipinterface",
            "set-netipsecdospsetting",
            "set-netipsecmainmodecryptoset",
            "set-netipsecmainmoderule",
            "set-netipsecphase1authset",
            "set-netipsecphase2authset",
            "set-netipsecquickmodecryptoset",
            "set-netipsecrule",
            "set-netipv4protocol",
            "set-netipv6protocol",
            "set-netisatapconfiguration",
            "set-netlbfoteam",
            "set-netlbfoteammember",
            "set-netlbfoteamnic",
            "set-netnat",
            "set-netnatglobal",
            "set-netnattransitionconfiguration",
            "set-netneighbor",
            "set-netoffloadglobalsetting",
            "set-netqospolicy",
            "set-netroute",
            "set-nettcpsetting",
            "set-netteredoconfiguration",
            "set-netudpsetting",
            "set-odbcdriver",
            "set-odbcdsn",
            "set-partition",
            "set-pcsvdevicebootconfiguration",
            "set-physicaldisk",
            "set-printconfiguration",
            "set-printer",
            "set-printerproperty",
            "set-resiliencysetting",
            "set-scheduledtask",
            "set-smbbandwidthlimit",
            "set-smbclientconfiguration",
            "set-smbpathacl",
            "set-smbserverconfiguration",
            "set-smbshare",
            "set-storagepool",
            "set-storageprovider",
            "set-storagesetting",
            "set-storagesubsystem",
            "set-storagetier",
            "set-virtualdisk",
            "set-volume",
            "set-volumescrubpolicy",
            "set-vpnconnection",
            "set-vpnconnectionipsecconfiguration",
            "set-vpnconnectionproxy",
            "set-vpnconnectiontriggerdnsconfiguration",
            "set-vpnconnectiontriggertrustednetwork",
            "show-netfirewallrule",
            "show-netipsecrule",
            "show-virtualdisk",
            "show-windowsdeveloperlicenseregistration",
            "start-appbackgroundtask",
            "start-dtc",
            "start-dtctransactionstracesession",
            "start-mpscan",
            "start-neteventsession",
            "start-pcsvdevice",
            "start-scheduledtask",
            "stop-dtc",
            "stop-dtctransactionstracesession",
            "stop-neteventsession",
            "stop-pcsvdevice",
            "stop-scheduledtask",
            "suspend-bitlocker",
            "suspend-printjob",
            "sync-netipsecrule",
            "test-dtc",
            "test-netconnection",
            "unblock-smbshareaccess",
            "uninstall-dtc",
            "unlock-bitlocker",
            "unregister-appbackgroundtask",
            "unregister-clusteredscheduledtask",
            "unregister-iscsisession",
            "unregister-scheduledtask",
            "unregister-storagesubsystem",
            "unregister-windowsdeveloperlicense",
            "update-disk",
            "update-hoststoragecache",
            "update-iscsitarget",
            "update-iscsitargetportal",
            "update-mpsignature",
            "update-netipsecrule",
            "update-smbmultichannelconnection",
            "update-storagepool",
            "update-storageprovidercache",
            "write-dtctransactionstracesession",
            "write-printernfctag",
            "write-volumecache",
            "add-appxpackage",
            "add-appxprovisionedpackage",
            "add-certificateenrollmentpolicyserver",
            "add-kdsrootkey",
            "add-windowsdriver",
            "add-windowsimage",
            "add-windowspackage",
            "clear-kdscache",
            "clear-tpm",
            "clear-windowscorruptmountpoint",
            "complete-dtcdiagnostictransaction",
            "confirm-securebootuefi",
            "convertto-tpmownerauth",
            "disable-appbackgroundtaskdiagnosticlog",
            "disable-tlssessionticketkey",
            "disable-tpmautoprovisioning",
            "disable-windowserrorreporting",
            "disable-windowsoptionalfeature",
            "dismount-windowsimage",
            "enable-appbackgroundtaskdiagnosticlog",
            "enable-tlssessionticketkey",
            "enable-tpmautoprovisioning",
            "enable-windowserrorreporting",
            "enable-windowsoptionalfeature",
            "expand-windowsimage",
            "export-certificate",
            "export-pfxcertificate",
            "export-startlayout",
            "export-tlssessionticketkey",
            "export-windowsdriver",
            "export-windowsimage",
            "format-securebootuefi",
            "get-appxpackage",
            "get-appxpackagemanifest",
            "get-appxprovisionedpackage",
            "get-certificate",
            "get-certificateautoenrollmentpolicy",
            "get-certificateenrollmentpolicyserver",
            "get-certificatenotificationtask",
            "get-dapolicychange",
            "get-kdsconfiguration",
            "get-kdsrootkey",
            "get-pfxdata",
            "get-securebootpolicy",
            "get-securebootuefi",
            "get-tpm",
            "get-tpmendorsementkeyinfo",
            "get-tpmsupportedfeature",
            "get-wimbootentry",
            "get-winacceptlanguagefromlanguagelistoptout",
            "get-winculturefromlanguagelistoptout",
            "get-windefaultinputmethodoverride",
            "get-windowsdriver",
            "get-windowsedition",
            "get-windowserrorreporting",
            "get-windowsimage",
            "get-windowsimagecontent",
            "get-windowsoptionalfeature",
            "get-windowspackage",
            "get-windowssearchsetting",
            "get-winhomelocation",
            "get-winlanguagebaroption",
            "get-winsystemlocale",
            "get-winuilanguageoverride",
            "get-winuserlanguagelist",
            "import-certificate",
            "import-pfxcertificate",
            "import-startlayout",
            "import-tpmownerauth",
            "initialize-tpm",
            "join-dtcdiagnosticresourcemanager",
            "mount-windowsimage",
            "new-certificatenotificationtask",
            "new-dtcdiagnostictransaction",
            "new-netipsecauthproposal",
            "new-netipsecmainmodecryptoproposal",
            "new-netipsecquickmodecryptoproposal",
            "new-selfsignedcertificate",
            "new-tlssessionticketkey",
            "new-windowscustomimage",
            "new-windowsimage",
            "new-winuserlanguagelist",
            "optimize-windowsimage",
            "receive-dtcdiagnostictransaction",
            "remove-appxpackage",
            "remove-appxprovisionedpackage",
            "remove-certificateenrollmentpolicyserver",
            "remove-certificatenotificationtask",
            "remove-windowsdriver",
            "remove-windowsimage",
            "remove-windowspackage",
            "repair-windowsimage",
            "resolve-dnsname",
            "save-windowsimage",
            "send-dtcdiagnostictransaction",
            "set-appbackgroundtaskresourcepolicy",
            "set-appxprovisioneddatafile",
            "set-certificateautoenrollmentpolicy",
            "set-culture",
            "set-kdsconfiguration",
            "set-securebootuefi",
            "set-tpmownerauth",
            "set-winacceptlanguagefromlanguagelistoptout",
            "set-winculturefromlanguagelistoptout",
            "set-windefaultinputmethodoverride",
            "set-windowsedition",
            "set-windowsproductkey",
            "set-windowssearchsetting",
            "set-winhomelocation",
            "set-winlanguagebaroption",
            "set-winsystemlocale",
            "set-winuilanguageoverride",
            "set-winuserlanguagelist",
            "split-windowsimage",
            "start-dtcdiagnosticresourcemanager",
            "stop-dtcdiagnosticresourcemanager",
            "switch-certificate",
            "test-certificate",
            "test-kdsrootkey",
            "unblock-tpm",
            "undo-dtcdiagnostictransaction",
            "update-wimbootentry",
            "use-windowsunattend"
		)
		
		If ($CommandAst.GetCommandName() -eq $null) {
			Return $results
		} Else {
			$cmdName = $CommandAst.GetCommandName().ToLower();
		}
		
		If ($cmdName -in $cmds) {
			$result = [PSCustomObject]@{
				"Message" = "$cmdName might require Windows 8.1/Windows Server 2012 R2 or higher.";
				"Extent" = $CommandAst.Extent;
				"RuleName" = "Test-OS62Command";
				"Severity" = "Warning"
			}
			$results += $result
		}
		
		Return $results
	}
}

<#
.SYNOPSIS
    Test commands against Windows 10
.DESCRIPTION
    Test commands against Windows 10
.EXAMPLE
    Test-OS10Command -CommandAst $CommandAst
.INPUTS
    [System.Management.Automation.Language.CommandAst]
.OUTPUTS
    [PSCustomObject[]]
.NOTES
    None.
#>
Function Test-OS10Command {
	[CmdletBinding()]
	[OutputType([PSCustomObject[]])]
	Param (
		[Parameter(Mandatory = $true)]
		[ValidateNotNullOrEmpty()]
		[System.Management.Automation.Language.CommandAst]$CommandAst
	)
	
	Process {
		$results = @()
		
		$cmds = @(
            "disable-storagediagnosticlog",
            "enable-storagediagnosticlog",
            "get-disksnv",
            "get-physicaldisksnv",
            "get-storageenclosuresnv",
            "add-etwtraceprovider",
            "add-neteventwfpcaptureprovider",
            "assert-mockcalled",
            "assert-verifiablemocks",
            "block-fileshareaccess",
            "clear-pcsvdevicelog",
            "clear-storagediagnosticinfo",
            "debug-fileshare",
            "debug-storagesubsystem",
            "debug-volume",
            "disable-netadapterpacketdirect",
            "disable-physicaldiskidentification",
            "disable-pnpdevice",
            "disable-storagehighavailability",
            "enable-netadapterpacketdirect",
            "enable-physicaldiskidentification",
            "enable-pnpdevice",
            "enable-storagehighavailability",
            "get-autologgerconfig",
            "get-dedupproperties",
            "get-diskstoragenodeview",
            "get-etwtraceprovider",
            "get-etwtracesession",
            "get-fileshare",
            "get-fileshareaccesscontrolentry",
            "get-mockdynamicparameters",
            "get-netadapterpacketdirect",
            "get-neteventwfpcaptureprovider",
            "get-pcsvdevicelog",
            "get-physicaldiskstoragenodeview",
            "get-pnpdevice",
            "get-pnpdeviceproperty",
            "get-storageadvancedproperty",
            "get-storagediagnosticinfo",
            "get-storageenclosurestoragenodeview",
            "get-storagefaultdomain",
            "get-storagefileserver",
            "get-storagefirmwareinformation",
            "get-storagehealthaction",
            "get-storagehealthreport",
            "get-storagehealthsetting",
            "get-testdriveitem",
            "get-windowsupdatelog",
            "grant-fileshareaccess",
            "invoke-mock",
            "invoke-pester",
            "new-autologgerconfig",
            "new-etwtracesession",
            "new-fileshare",
            "new-fixture",
            "new-storagefileserver",
            "optimize-storagepool",
            "remove-autologgerconfig",
            "remove-etwtraceprovider",
            "remove-etwtracesession",
            "remove-fileshare",
            "remove-neteventwfpcaptureprovider",
            "remove-storagefileserver",
            "remove-storagehealthsetting",
            "revoke-fileshareaccess",
            "send-etwtracesession",
            "set-autologgerconfig",
            "set-dynamicparametervariables",
            "set-etwtraceprovider",
            "set-etwtracesession",
            "set-fileshare",
            "set-netadapterpacketdirect",
            "set-neteventwfpcaptureprovider",
            "set-pcsvdevicenetworkconfiguration",
            "set-pcsvdeviceuserpassword",
            "set-storagefileserver",
            "set-storagehealthsetting",
            "start-autologgerconfig",
            "start-mpwdoscan",
            "start-storagediagnosticlog",
            "stop-storagediagnosticlog",
            "stop-storagejob",
            "unblock-fileshareaccess",
            "update-storagefirmware",
            "add-appxvolume",
            "add-windowscapability",
            "disable-tlsciphersuite",
            "dismount-appxvolume",
            "enable-tlsciphersuite",
            "expand-windowscustomdataimage",
            "get-appxdefaultvolume",
            "get-appxvolume",
            "get-psreadlinekeyhandler",
            "get-psreadlineoption",
            "get-tlsciphersuite",
            "get-windowscapability",
            "mount-appxvolume",
            "move-appxpackage",
            "remove-appxvolume",
            "remove-psreadlinekeyhandler",
            "remove-windowscapability",
            "set-appxdefaultvolume",
            "set-psreadlinekeyhandler",
            "set-psreadlineoption"
		)
		
		If ($CommandAst.GetCommandName() -eq $null) {
			Return $results
		} Else {
			$cmdName = $CommandAst.GetCommandName().ToLower();
		}
		
		If ($cmdName -in $cmds) {
			$result = [PSCustomObject]@{
				"Message" = "$cmdName might require Windows 10 or higher.";
				"Extent" = $CommandAst.Extent;
				"RuleName" = "Test-OS10Command";
				"Severity" = "Warning"
			}
			$results += $result
		}
		
		Return $results
	}
}

<#
.SYNOPSIS
    Test commands against Windows Server OS
.DESCRIPTION
    Test commands against Windows Server OS
.EXAMPLE
    Test-ClientOSCommand -CommandAst $CommandAst
.INPUTS
    [System.Management.Automation.Language.CommandAst]
.OUTPUTS
    [PSCustomObject[]]
.NOTES
    None.
#>
Function Test-ServerOSCommand {
	[CmdletBinding()]
	[OutputType([PSCustomObject[]])]
	Param (
		[Parameter(Mandatory = $true)]
		[ValidateNotNullOrEmpty()]
		[System.Management.Automation.Language.CommandAst]$CommandAst
	)
	
	Process {
		$results = @()
		
		$cmds = @(
            "get-isesnippet",
            "import-isesnippet",
            "new-isesnippet",
            "get-applockerfileinformation",
            "get-applockerpolicy",
            "get-troubleshootingpack",
            "invoke-troubleshootingpack",
            "new-applockerpolicy",
            "set-applockerpolicy",
            "test-applockerpolicy"
		)
		
		If ($CommandAst.GetCommandName() -eq $null) {
			Return $results
		} Else {
			$cmdName = $CommandAst.GetCommandName().ToLower();
		}
		
		If ($cmdName -in $cmds) {
			$result = [PSCustomObject]@{
				"Message" = "$cmdName might not run on Windows Server OS.";
				"Extent" = $CommandAst.Extent;
				"RuleName" = "Test-ServerOSCommand";
				"Severity" = "Warning"
			}
			$results += $result
		}
		
		Return $results
	}
}

Export-ModuleMember -Function "Test-*"