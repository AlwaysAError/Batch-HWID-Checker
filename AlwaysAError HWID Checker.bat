@echo off
title HWID Checker By AlwaysAError On GitHub
color 0a
echo HWID Checker By AlwaysAError On GitHub
echo =========================
echo.

:: CPU ID
echo CPU ID:
powershell -Command "Get-CimInstance -ClassName Win32_Processor | Select-Object -Property ProcessorId, Name | Format-Table -HideTableHeaders"
echo.

:: Disk Serial Numbers
echo Disk Serial Numbers:
powershell -Command "Get-CimInstance -ClassName Win32_DiskDrive | Select-Object -Property Model, SerialNumber | Format-Table -HideTableHeaders"
echo.

:: Motherboard Serial Number
echo Motherboard Serial Number:
powershell -Command "Get-CimInstance -ClassName Win32_BaseBoard | Select-Object -Property Manufacturer, Product, SerialNumber | Format-Table -HideTableHeaders"
echo.

:: BIOS Serial Number
echo BIOS Serial Number:
powershell -Command "Get-CimInstance -ClassName Win32_BIOS | Select-Object -Property Manufacturer, SerialNumber, Version | Format-Table -HideTableHeaders"
echo.

:: Memory (RAM) Serial Numbers
echo Memory Module Serial Numbers:
powershell -Command "Get-CimInstance -ClassName Win32_PhysicalMemory | Select-Object -Property Manufacturer, PartNumber, SerialNumber | Format-Table -HideTableHeaders"
echo.

:: Network Adapter MAC Addresses
echo Network Adapter MAC Addresses:
powershell -Command "Get-CimInstance -ClassName Win32_NetworkAdapter | Where-Object { $_.MACAddress -ne $null } | Select-Object -Property Name, MACAddress | Format-Table -HideTableHeaders"
echo.

:: GPU Information
echo GPU Information:
powershell -Command "Get-CimInstance -ClassName Win32_VideoController | Select-Object -Property Name, DeviceID | Format-Table -HideTableHeaders"
echo.

:: Sound Device Information
echo Sound Device Information:
powershell -Command "Get-CimInstance -ClassName Win32_SoundDevice | Select-Object -Property Name, DeviceID | Format-Table -HideTableHeaders"
echo.

:: System UUID
echo System UUID:
powershell -Command "Get-CimInstance -ClassName Win32_ComputerSystemProduct | Select-Object -Property UUID | Format-Table -HideTableHeaders"
echo.

:: Logical Disk Volume Serial Numbers
echo Logical Disk Volume Serial Numbers:
powershell -Command "Get-CimInstance -ClassName Win32_LogicalDisk | Select-Object -Property DeviceID, VolumeSerialNumber | Format-Table -HideTableHeaders"
echo.

:: TPM (Trusted Platform Module) Information
echo TPM Information:
powershell -Command "Get-CimInstance -Namespace root\CIMV2\Security\MicrosoftTpm -ClassName Win32_Tpm | Select-Object -Property ManufacturerId, SpecVersion | Format-Table -HideTableHeaders"
echo.

:: System Enclosure Serial Number
echo System Enclosure Serial Number:
powershell -Command "Get-CimInstance -ClassName Win32_SystemEnclosure | Select-Object -Property SerialNumber | Format-Table -HideTableHeaders"
echo.

:: Operating System Serial Number
echo Operating System Serial Number:
powershell -Command "Get-CimInstance -ClassName Win32_OperatingSystem | Select-Object -Property SerialNumber | Format-Table -HideTableHeaders"
echo.

echo =========================
echo Press any key to exit.
echo HWID Checker By AlwaysAError On GitHub
pause >nul