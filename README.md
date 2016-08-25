# VersionAnalyzerRules

Custom PSScriptAnalyzer Rules to identify the required PowerShell and OS Versions.

Get from the PowerShellGallery - https://www.powershellgallery.com/packages/VersionAnalyzerRules

WMF Versions 3-5 Supported. Supported Operating Systems:

* Windows 10 (1507)
* Windows Server 2012 R2
* Windows 8.1
* Windows Server 2008 R2 SP1
* Windows 7 SP1

If you want like to contribute or report an issue please do so on GitHub.

Example Usage - `Invoke-ScriptAnalyzer -Path "C:\Program Files\WindowsPowerShell\Modules\Pester" -Recurse -CustomRulePath "C:\VersionAnalyzerRules"`

![Example Image](http://i.imgur.com/DpNLTqA.png)
