<#
    .SYNOPSIS
    This script is used for retrieving the model name of the computer.

    .DESCRIPTION
    This script utilizes the Win32_ComputerSystem WMI table in order to retrieve and
    return the model name of the computer.

    .EXAMPLE
    Get-ComputerModel.ps1

    .NOTES
    Author: Rory Fewell
    GitHub: https://github.com/rozniak
    Website: https://oddmatics.uk
#>

return (Get-WmiObject Win32_ComputerSystem).Model;
