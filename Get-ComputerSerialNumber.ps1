<#
    .SYNOPSIS
    This script is used for retrieving the serial number of the computer.

    .DESCRIPTION
    This script utilizes the Win32_Bios WMI table in order to retrieve and return the
    serial number of the computer.

    .EXAMPLE
    Get-ComputerSerialNumber.ps1

    .NOTES
    Author: Rory Fewell
    GitHub: https://github.com/rozniak
    Website: https://oddmatics.uk
#>

return (Get-WmiObject Win32_Bios).SerialNumber;
