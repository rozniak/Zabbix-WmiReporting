<#
    .SYNOPSIS
    This script is used for retrieving properties from WMI tables.

    .DESCRIPTION
    This script utilizes the WMI tables to retrieve various bits of information about
    the computer.

    .EXAMPLE
    Get-WmiData.ps1 Win32_ComputerSystem Model

    .NOTES
    Author: Rory Fewell
    GitHub: https://github.com/rozniak
    Website: https://oddmatics.uk
#>

Param (
    [Parameter(Position=0, Mandatory=$TRUE)]
    [String]
    $WmiTable,
    [Parameter(Position=1, Mandatory=$TRUE)]
    [String]
    $WmiProperty
)

return (Get-WmiObject $WmiTable).$WmiProperty;