# VersionAnalyzerRules

Custom PSScriptAnalyzer Rules to identify the required PowerShell and OS Versions.

Get from the PowerShellGallery - https://www.powershellgallery.com/packages/VersionAnalyzerRules

WMF Versions 3-5 Supported. Supported Operating Systems:

* Windows 10 (1507)
* Windows Server 2012 R2
* Windows 8.1
* Windows Server 2008 R2 SP1
* Windows 7 SP1

If you would like to contribute or report an issue please do so on GitHub.

## Supported Systems

| Operating System Version   | Core 6 Beta        | WMF 5.1            | WMF 5.0            | WMF 4.0            | WMF 3.0            | WMF 2.0 |
|----------------------------|--------------------|--------------------|--------------------|--------------------|--------------------|---------|
| Windows Nano Server        |                    | :heavy_check_mark: | N/A                | N/A                | N/A                | N/A     |
| Windows Server 2016        |                    | :heavy_check_mark: | N/A                | N/A                | N/A                | N/A     |
| Windows 10                 |                    | :heavy_check_mark: | :heavy_check_mark: | N/A                | N/A                | N/A     |
| Windows Server 2012 R2     |                    | :heavy_check_mark: | :heavy_check_mark: |                    | N/A                | N/A     |
| Windows 8.1                |                    | :heavy_check_mark: | :heavy_check_mark: |                    | N/A                | N/A     |
| Windows Server 2008 R2 SP1 |                    | :heavy_check_mark: | :heavy_check_mark: |                    |                    |         |
| Windows 7 SP1              |                    | :heavy_check_mark: | :heavy_check_mark: |                    |                    |         |

Systems without a green tick either this module will not run on these systems or will not be tested for compatibility and as such are unsupported.

## Examples

### Example 1 - Writing the minimum requirements to host:

```powershell
Function Write-VersionRequirements {
    # Change the variable below (ProjectPath) to your modules location
    $ProjectPath = "$env:USERPROFILE\Documents\WindowsPowerShell\Modules\MyModule" 

    Save-Module -Name VersionAnalyzerRules -Path "$env:TEMP"
    $VersionRequirements = Invoke-ScriptAnalyzer -Path "$ProjectPath" -Recurse -CustomRulePath "$env:TEMP\VersionAnalyzerRules" -ErrorAction SilentlyContinue

    If ($VersionRequirements) {
        If ($VersionRequirements.RuleName.Contains('Test-OS10Command')) {
            $RequiredOS = 'Windows 10/Windows Server 2016'
        } ElseIf ($VersionRequirements.RuleName.Contains('Test-OS62Command')) {
            $RequiredOS = 'Windows 8.1/Windows Server 2012 R2'
        } Else {
            $RequiredOS = 'Windows 7/Windows Server 2008 R2'
        }

        If ($VersionRequirements.RuleName.Contains('Test-PowerShellv5Command')) {
            $RequiredWMF = 'WMF 5'
        } ElseIf ($VersionRequirements.RuleName.Contains('Test-PowerShellv4Command')) {
            $RequiredWMF = 'WMF 4'
        } ElseIf ($VersionRequirements.RuleName.Contains('Test-PowerShellv3Command')) {
            $RequiredWMF = 'WMF 3'
        } Else {
            $RequiredWMF = 'WMF 2'
        }
    } Else {
        $RequiredOS = 'Windows 7/Windows Server 2008 R2'
        $RequiredWMF = 'WMF 2'
    }

    Write-Host -Object " "
    Write-Host -Object "The Required OS Version is: " -NoNewline -ForegroundColor Yellow
    Write-Host -Object "$RequiredOS" -ForegroundColor Green
    Write-Host -Object "The Required WMF Version is: " -NoNewline -ForegroundColor Yellow
    Write-Host -Object "$RequiredWMF" -ForegroundColor Green
    Write-Host -Object " "
}

Write-VersionRequirements
```

![Example 1 Image](http://i.imgur.com/D6P4DgN.png)

### Example 2 - Identify what commands and line number are requiring a minimum of Windows 8.1/Windows Server 2012 R2

```powershell
# Change the variable below (ProjectPath) to your modules location
$ProjectPath = "$env:USERPROFILE\Documents\WindowsPowerShell\Modules\MyModule"

Save-Module -Name VersionAnalyzerRules -Path "$env:TEMP"
Invoke-ScriptAnalyzer -Path "$ProjectPath" -Recurse -CustomRulePath "$env:TEMP\VersionAnalyzerRules" -ErrorAction SilentlyContinue | Where-Object {$_.RuleName -eq 'Test-OS62Command'} | Select-Object -Property ScriptName, Line, Message
```

![Example 2 Image](http://i.imgur.com/X7pSlH2.png)
