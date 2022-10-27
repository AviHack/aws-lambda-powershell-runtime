# Auto-generated argument completers for parameters of SDK ConstantClass-derived type used in cmdlets.
# Do not modify this file; it may be overwritten during version upgrades.

$psMajorVersion = $PSVersionTable.PSVersion.Major
if ($psMajorVersion -eq 2) 
{ 
	Write-Verbose "Dynamic argument completion not supported in PowerShell version 2; skipping load."
	return 
}

# PowerShell's native Register-ArgumentCompleter cmdlet is available on v5.0 or higher. For lower
# version, we can use the version in the TabExpansion++ module if installed.
$registrationCmdletAvailable = ($psMajorVersion -ge 5) -Or !((Get-Command Register-ArgumentCompleter -ea Ignore) -eq $null)

# internal function to perform the registration using either cmdlet or manipulation
# of the options table
function _awsArgumentCompleterRegistration()
{
    param
    (
        [scriptblock]$scriptBlock,
        [hashtable]$param2CmdletsMap
    )

    if ($registrationCmdletAvailable)
    {
        foreach ($paramName in $param2CmdletsMap.Keys)
        {
             $args = @{
                "ScriptBlock" = $scriptBlock
                "Parameter" = $paramName
            }

            $cmdletNames = $param2CmdletsMap[$paramName]
            if ($cmdletNames -And $cmdletNames.Length -gt 0)
            {
                $args["Command"] = $cmdletNames
            }

            Register-ArgumentCompleter @args
        }
    }
    else
    {
        if (-not $global:options) { $global:options = @{ CustomArgumentCompleters = @{ }; NativeArgumentCompleters = @{ } } }

        foreach ($paramName in $param2CmdletsMap.Keys)
        {
            $cmdletNames = $param2CmdletsMap[$paramName]

            if ($cmdletNames -And $cmdletNames.Length -gt 0)
            {
                foreach ($cn in $cmdletNames)
                {
                    $fqn =  [string]::Concat($cn, ":", $paramName)
                    $global:options['CustomArgumentCompleters'][$fqn] = $scriptBlock
                }
            }
            else
            {
                $global:options['CustomArgumentCompleters'][$paramName] = $scriptBlock
            }
        }

        $function:tabexpansion2 = $function:tabexpansion2 -replace 'End\r\n{', 'End { if ($null -ne $options) { $options += $global:options} else {$options = $global:options}'
    }
}

# To allow for same-name parameters of different ConstantClass-derived types 
# each completer function checks on command name concatenated with parameter name.
# Additionally, the standard code pattern for completers is to pipe through 
# sort-object after filtering against $wordToComplete but we omit this as our members 
# are already sorted.

# Argument completions for service AWS IoT Wireless


$IOTW_Completers = {
    param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

    switch ($("$commandName/$parameterName"))
    {
        # Amazon.IoTWireless.DlClass
        {
            ($_ -eq "New-IOTWMulticastGroup/LoRaWAN_DlClass") -Or
            ($_ -eq "Update-IOTWMulticastGroup/LoRaWAN_DlClass")
        }
        {
            $v = "ClassB","ClassC"
            break
        }

        # Amazon.IoTWireless.DownlinkMode
        "Send-IOTWDataToWirelessDevice/WirelessMetadata_LoRaWAN_ParticipatingGateways_DownlinkMode"
        {
            $v = "CONCURRENT","SEQUENTIAL","USING_UPLINK_GATEWAY"
            break
        }

        # Amazon.IoTWireless.EventNotificationPartnerType
        {
            ($_ -eq "Get-IOTWResourceEventConfiguration/PartnerType") -Or
            ($_ -eq "Update-IOTWResourceEventConfiguration/PartnerType")
        }
        {
            $v = "Sidewalk"
            break
        }

        # Amazon.IoTWireless.EventNotificationResourceType
        "Get-IOTWEventConfigurationList/ResourceType"
        {
            $v = "SidewalkAccount","WirelessDevice","WirelessGateway"
            break
        }

        # Amazon.IoTWireless.EventNotificationTopicStatus
        {
            ($_ -eq "Update-IOTWResourceEventConfiguration/ConnectionStatus_LoRaWAN_GatewayEuiEventTopic") -Or
            ($_ -eq "Update-IOTWEventConfigurationByResourceType/ConnectionStatus_LoRaWAN_WirelessGatewayEventTopic") -Or
            ($_ -eq "Update-IOTWResourceEventConfiguration/ConnectionStatus_WirelessGatewayIdEventTopic") -Or
            ($_ -eq "Update-IOTWResourceEventConfiguration/DeviceRegistrationState_Sidewalk_AmazonIdEventTopic") -Or
            ($_ -eq "Update-IOTWEventConfigurationByResourceType/DeviceRegistrationState_Sidewalk_WirelessDeviceEventTopic") -Or
            ($_ -eq "Update-IOTWResourceEventConfiguration/DeviceRegistrationState_WirelessDeviceIdEventTopic") -Or
            ($_ -eq "Update-IOTWResourceEventConfiguration/Join_LoRaWAN_DevEuiEventTopic") -Or
            ($_ -eq "Update-IOTWEventConfigurationByResourceType/Join_LoRaWAN_WirelessDeviceEventTopic") -Or
            ($_ -eq "Update-IOTWResourceEventConfiguration/Join_WirelessDeviceIdEventTopic") -Or
            ($_ -eq "Update-IOTWResourceEventConfiguration/MessageDeliveryStatus_Sidewalk_AmazonIdEventTopic") -Or
            ($_ -eq "Update-IOTWEventConfigurationByResourceType/MessageDeliveryStatus_Sidewalk_WirelessDeviceEventTopic") -Or
            ($_ -eq "Update-IOTWResourceEventConfiguration/MessageDeliveryStatus_WirelessDeviceIdEventTopic") -Or
            ($_ -eq "Update-IOTWResourceEventConfiguration/Proximity_Sidewalk_AmazonIdEventTopic") -Or
            ($_ -eq "Update-IOTWEventConfigurationByResourceType/Proximity_Sidewalk_WirelessDeviceEventTopic") -Or
            ($_ -eq "Update-IOTWResourceEventConfiguration/Proximity_WirelessDeviceIdEventTopic")
        }
        {
            $v = "Disabled","Enabled"
            break
        }

        # Amazon.IoTWireless.ExpressionType
        {
            ($_ -eq "New-IOTWDestination/ExpressionType") -Or
            ($_ -eq "Update-IOTWDestination/ExpressionType")
        }
        {
            $v = "MqttTopic","RuleName"
            break
        }

        # Amazon.IoTWireless.IdentifierType
        {
            ($_ -eq "Get-IOTWResourceEventConfiguration/IdentifierType") -Or
            ($_ -eq "Update-IOTWResourceEventConfiguration/IdentifierType")
        }
        {
            $v = "DevEui","GatewayEui","PartnerAccountId","WirelessDeviceId","WirelessGatewayId"
            break
        }

        # Amazon.IoTWireless.LogLevel
        {
            ($_ -eq "Update-IOTWLogLevelsByResourceType/DefaultLogLevel") -Or
            ($_ -eq "Write-IOTWResourceLogLevel/LogLevel") -Or
            ($_ -eq "New-IOTWNetworkAnalyzerConfiguration/TraceContent_LogLevel") -Or
            ($_ -eq "Update-IOTWNetworkAnalyzerConfiguration/TraceContent_LogLevel")
        }
        {
            $v = "DISABLED","ERROR","INFO"
            break
        }

        # Amazon.IoTWireless.MessageType
        "Send-IOTWDataToWirelessDevice/WirelessMetadata_Sidewalk_MessageType"
        {
            $v = "CUSTOM_COMMAND_ID_GET","CUSTOM_COMMAND_ID_NOTIFY","CUSTOM_COMMAND_ID_RESP","CUSTOM_COMMAND_ID_SET"
            break
        }

        # Amazon.IoTWireless.PartnerType
        {
            ($_ -eq "Get-IOTWPartnerAccount/PartnerType") -Or
            ($_ -eq "Split-IOTWAwsAccountFromPartnerAccount/PartnerType") -Or
            ($_ -eq "Update-IOTWPartnerAccount/PartnerType")
        }
        {
            $v = "Sidewalk"
            break
        }

        # Amazon.IoTWireless.PositionConfigurationFec
        "Write-IOTWPositionConfiguration/Solvers_SemtechGnss_Fec"
        {
            $v = "NONE","ROSE"
            break
        }

        # Amazon.IoTWireless.PositionConfigurationStatus
        "Write-IOTWPositionConfiguration/Solvers_SemtechGnss_Status"
        {
            $v = "Disabled","Enabled"
            break
        }

        # Amazon.IoTWireless.PositionResourceType
        {
            ($_ -eq "Get-IOTWPosition/ResourceType") -Or
            ($_ -eq "Get-IOTWPositionConfiguration/ResourceType") -Or
            ($_ -eq "Get-IOTWPositionConfigurationList/ResourceType") -Or
            ($_ -eq "Update-IOTWPosition/ResourceType") -Or
            ($_ -eq "Write-IOTWPositionConfiguration/ResourceType")
        }
        {
            $v = "WirelessDevice","WirelessGateway"
            break
        }

        # Amazon.IoTWireless.SupportedRfRegion
        {
            ($_ -eq "New-IOTWFuotaTask/LoRaWAN_RfRegion") -Or
            ($_ -eq "New-IOTWMulticastGroup/LoRaWAN_RfRegion") -Or
            ($_ -eq "Update-IOTWFuotaTask/LoRaWAN_RfRegion") -Or
            ($_ -eq "Update-IOTWMulticastGroup/LoRaWAN_RfRegion")
        }
        {
            $v = "AS923-1","AU915","EU868","US915"
            break
        }

        # Amazon.IoTWireless.WirelessDeviceFrameInfo
        {
            ($_ -eq "New-IOTWNetworkAnalyzerConfiguration/TraceContent_WirelessDeviceFrameInfo") -Or
            ($_ -eq "Update-IOTWNetworkAnalyzerConfiguration/TraceContent_WirelessDeviceFrameInfo")
        }
        {
            $v = "DISABLED","ENABLED"
            break
        }

        # Amazon.IoTWireless.WirelessDeviceIdType
        "Get-IOTWWirelessDevice/IdentifierType"
        {
            $v = "DevEui","SidewalkManufacturingSn","ThingName","WirelessDeviceId"
            break
        }

        # Amazon.IoTWireless.WirelessDeviceType
        {
            ($_ -eq "New-IOTWWirelessDevice/Type") -Or
            ($_ -eq "Get-IOTWQueuedMessageList/WirelessDeviceType") -Or
            ($_ -eq "Get-IOTWWirelessDeviceList/WirelessDeviceType") -Or
            ($_ -eq "Remove-IOTWQueuedMessage/WirelessDeviceType")
        }
        {
            $v = "LoRaWAN","Sidewalk"
            break
        }

        # Amazon.IoTWireless.WirelessGatewayIdType
        "Get-IOTWWirelessGateway/IdentifierType"
        {
            $v = "GatewayEui","ThingName","WirelessGatewayId"
            break
        }

        # Amazon.IoTWireless.WirelessGatewayServiceType
        "Get-IOTWServiceEndpoint/ServiceType"
        {
            $v = "CUPS","LNS"
            break
        }

        # Amazon.IoTWireless.WirelessGatewayTaskDefinitionType
        "Get-IOTWWirelessGatewayTaskDefinitionList/TaskDefinitionType"
        {
            $v = "UPDATE"
            break
        }


    }

    $v |
        Where-Object { $_ -like "$wordToComplete*" } |
        ForEach-Object { New-Object System.Management.Automation.CompletionResult $_, $_, 'ParameterValue', $_ }
}

$IOTW_map = @{
    "ConnectionStatus_LoRaWAN_GatewayEuiEventTopic"=@("Update-IOTWResourceEventConfiguration")
    "ConnectionStatus_LoRaWAN_WirelessGatewayEventTopic"=@("Update-IOTWEventConfigurationByResourceType")
    "ConnectionStatus_WirelessGatewayIdEventTopic"=@("Update-IOTWResourceEventConfiguration")
    "DefaultLogLevel"=@("Update-IOTWLogLevelsByResourceType")
    "DeviceRegistrationState_Sidewalk_AmazonIdEventTopic"=@("Update-IOTWResourceEventConfiguration")
    "DeviceRegistrationState_Sidewalk_WirelessDeviceEventTopic"=@("Update-IOTWEventConfigurationByResourceType")
    "DeviceRegistrationState_WirelessDeviceIdEventTopic"=@("Update-IOTWResourceEventConfiguration")
    "ExpressionType"=@("New-IOTWDestination","Update-IOTWDestination")
    "IdentifierType"=@("Get-IOTWResourceEventConfiguration","Get-IOTWWirelessDevice","Get-IOTWWirelessGateway","Update-IOTWResourceEventConfiguration")
    "Join_LoRaWAN_DevEuiEventTopic"=@("Update-IOTWResourceEventConfiguration")
    "Join_LoRaWAN_WirelessDeviceEventTopic"=@("Update-IOTWEventConfigurationByResourceType")
    "Join_WirelessDeviceIdEventTopic"=@("Update-IOTWResourceEventConfiguration")
    "LogLevel"=@("Write-IOTWResourceLogLevel")
    "LoRaWAN_DlClass"=@("New-IOTWMulticastGroup","Update-IOTWMulticastGroup")
    "LoRaWAN_RfRegion"=@("New-IOTWFuotaTask","New-IOTWMulticastGroup","Update-IOTWFuotaTask","Update-IOTWMulticastGroup")
    "MessageDeliveryStatus_Sidewalk_AmazonIdEventTopic"=@("Update-IOTWResourceEventConfiguration")
    "MessageDeliveryStatus_Sidewalk_WirelessDeviceEventTopic"=@("Update-IOTWEventConfigurationByResourceType")
    "MessageDeliveryStatus_WirelessDeviceIdEventTopic"=@("Update-IOTWResourceEventConfiguration")
    "PartnerType"=@("Get-IOTWPartnerAccount","Get-IOTWResourceEventConfiguration","Split-IOTWAwsAccountFromPartnerAccount","Update-IOTWPartnerAccount","Update-IOTWResourceEventConfiguration")
    "Proximity_Sidewalk_AmazonIdEventTopic"=@("Update-IOTWResourceEventConfiguration")
    "Proximity_Sidewalk_WirelessDeviceEventTopic"=@("Update-IOTWEventConfigurationByResourceType")
    "Proximity_WirelessDeviceIdEventTopic"=@("Update-IOTWResourceEventConfiguration")
    "ResourceType"=@("Get-IOTWEventConfigurationList","Get-IOTWPosition","Get-IOTWPositionConfiguration","Get-IOTWPositionConfigurationList","Update-IOTWPosition","Write-IOTWPositionConfiguration")
    "ServiceType"=@("Get-IOTWServiceEndpoint")
    "Solvers_SemtechGnss_Fec"=@("Write-IOTWPositionConfiguration")
    "Solvers_SemtechGnss_Status"=@("Write-IOTWPositionConfiguration")
    "TaskDefinitionType"=@("Get-IOTWWirelessGatewayTaskDefinitionList")
    "TraceContent_LogLevel"=@("New-IOTWNetworkAnalyzerConfiguration","Update-IOTWNetworkAnalyzerConfiguration")
    "TraceContent_WirelessDeviceFrameInfo"=@("New-IOTWNetworkAnalyzerConfiguration","Update-IOTWNetworkAnalyzerConfiguration")
    "Type"=@("New-IOTWWirelessDevice")
    "WirelessDeviceType"=@("Get-IOTWQueuedMessageList","Get-IOTWWirelessDeviceList","Remove-IOTWQueuedMessage")
    "WirelessMetadata_LoRaWAN_ParticipatingGateways_DownlinkMode"=@("Send-IOTWDataToWirelessDevice")
    "WirelessMetadata_Sidewalk_MessageType"=@("Send-IOTWDataToWirelessDevice")
}

_awsArgumentCompleterRegistration $IOTW_Completers $IOTW_map

$IOTW_SelectCompleters = {
    param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

    $cmdletType = Invoke-Expression "[Amazon.PowerShell.Cmdlets.IOTW.$($commandName.Replace('-', ''))Cmdlet]"
    if (-not $cmdletType) {
        return
    }
    $awsCmdletAttribute = $cmdletType.GetCustomAttributes([Amazon.PowerShell.Common.AWSCmdletAttribute], $false)
    if (-not $awsCmdletAttribute) {
        return
    }
    $type = $awsCmdletAttribute.SelectReturnType
    if (-not $type) {
        return
    }

    $splitSelect = $wordToComplete -Split '\.'
    $splitSelect | Select-Object -First ($splitSelect.Length - 1) | ForEach-Object {
        $propertyName = $_
        $properties = $type.GetProperties(('Instance', 'Public', 'DeclaredOnly')) | Where-Object { $_.Name -ieq $propertyName }
        if ($properties.Length -ne 1) {
            break
        }
        $type = $properties.PropertyType
        $prefix += "$($properties.Name)."

        $asEnumerableType = $type.GetInterface('System.Collections.Generic.IEnumerable`1')
        if ($asEnumerableType -and $type -ne [System.String]) {
            $type =  $asEnumerableType.GetGenericArguments()[0]
        }
    }

    $v = @( '*' )
    $properties = $type.GetProperties(('Instance', 'Public', 'DeclaredOnly')).Name | Sort-Object
    if ($properties) {
        $v += ($properties | ForEach-Object { $prefix + $_ })
    }
    $parameters = $cmdletType.GetProperties(('Instance', 'Public')) | Where-Object { $_.GetCustomAttributes([System.Management.Automation.ParameterAttribute], $true) } | Select-Object -ExpandProperty Name | Sort-Object
    if ($parameters) {
        $v += ($parameters | ForEach-Object { "^$_" })
    }

    $v |
        Where-Object { $_ -match "^$([System.Text.RegularExpressions.Regex]::Escape($wordToComplete)).*" } |
        ForEach-Object { New-Object System.Management.Automation.CompletionResult $_, $_, 'ParameterValue', $_ }
}

$IOTW_SelectMap = @{
    "Select"=@("Join-IOTWAwsAccountWithPartnerAccount",
               "Join-IOTWMulticastGroupWithFuotaTask",
               "Join-IOTWWirelessDeviceWithFuotaTask",
               "Join-IOTWWirelessDeviceWithMulticastGroup",
               "Join-IOTWWirelessDeviceWithThing",
               "Join-IOTWWirelessGatewayWithCertificate",
               "Join-IOTWWirelessGatewayWithThing",
               "Stop-IOTWMulticastGroupSession",
               "New-IOTWDestination",
               "New-IOTWDeviceProfile",
               "New-IOTWFuotaTask",
               "New-IOTWMulticastGroup",
               "New-IOTWNetworkAnalyzerConfiguration",
               "New-IOTWServiceProfile",
               "New-IOTWWirelessDevice",
               "New-IOTWWirelessGateway",
               "New-IOTWWirelessGatewayTask",
               "New-IOTWWirelessGatewayTaskDefinition",
               "Remove-IOTWDestination",
               "Remove-IOTWDeviceProfile",
               "Remove-IOTWFuotaTask",
               "Remove-IOTWMulticastGroup",
               "Remove-IOTWNetworkAnalyzerConfiguration",
               "Remove-IOTWQueuedMessage",
               "Remove-IOTWServiceProfile",
               "Remove-IOTWWirelessDevice",
               "Remove-IOTWWirelessGateway",
               "Remove-IOTWWirelessGatewayTask",
               "Remove-IOTWWirelessGatewayTaskDefinition",
               "Split-IOTWAwsAccountFromPartnerAccount",
               "Split-IOTWMulticastGroupFromFuotaTask",
               "Split-IOTWWirelessDeviceFromFuotaTask",
               "Split-IOTWWirelessDeviceFromMulticastGroup",
               "Split-IOTWWirelessDeviceFromThing",
               "Split-IOTWWirelessGatewayFromCertificate",
               "Split-IOTWWirelessGatewayFromThing",
               "Get-IOTWDestination",
               "Get-IOTWDeviceProfile",
               "Get-IOTWEventConfigurationByResourceType",
               "Get-IOTWFuotaTask",
               "Get-IOTWLogLevelsByResourceType",
               "Get-IOTWMulticastGroup",
               "Get-IOTWMulticastGroupSession",
               "Get-IOTWNetworkAnalyzerConfiguration",
               "Get-IOTWPartnerAccount",
               "Get-IOTWPosition",
               "Get-IOTWPositionConfiguration",
               "Get-IOTWResourceEventConfiguration",
               "Get-IOTWResourceLogLevel",
               "Get-IOTWServiceEndpoint",
               "Get-IOTWServiceProfile",
               "Get-IOTWWirelessDevice",
               "Get-IOTWWirelessDeviceStatistic",
               "Get-IOTWWirelessGateway",
               "Get-IOTWWirelessGatewayCertificate",
               "Get-IOTWWirelessGatewayFirmwareInformation",
               "Get-IOTWWirelessGatewayStatistic",
               "Get-IOTWWirelessGatewayTask",
               "Get-IOTWWirelessGatewayTaskDefinition",
               "Get-IOTWDestinationList",
               "Get-IOTWDeviceProfileList",
               "Get-IOTWEventConfigurationList",
               "Get-IOTWFuotaTaskList",
               "Get-IOTWMulticastGroupList",
               "Get-IOTWMulticastGroupsByFuotaTaskList",
               "Get-IOTWNetworkAnalyzerConfigurationList",
               "Get-IOTWPartnerAccountList",
               "Get-IOTWPositionConfigurationList",
               "Get-IOTWQueuedMessageList",
               "Get-IOTWServiceProfileList",
               "Get-IOTWResourceTag",
               "Get-IOTWWirelessDeviceList",
               "Get-IOTWWirelessGatewayList",
               "Get-IOTWWirelessGatewayTaskDefinitionList",
               "Write-IOTWPositionConfiguration",
               "Write-IOTWResourceLogLevel",
               "Reset-IOTWAllResourceLogLevel",
               "Reset-IOTWResourceLogLevel",
               "Send-IOTWDataToMulticastGroup",
               "Send-IOTWDataToWirelessDevice",
               "Start-IOTWBulkAssociateWirelessDeviceWithMulticastGroup",
               "Start-IOTWBulkDisassociateWirelessDeviceFromMulticastGroup",
               "Start-IOTWFuotaTask",
               "Start-IOTWMulticastGroupSession",
               "Add-IOTWResourceTag",
               "Test-IOTWWirelessDevice",
               "Remove-IOTWResourceTag",
               "Update-IOTWDestination",
               "Update-IOTWEventConfigurationByResourceType",
               "Update-IOTWFuotaTask",
               "Update-IOTWLogLevelsByResourceType",
               "Update-IOTWMulticastGroup",
               "Update-IOTWNetworkAnalyzerConfiguration",
               "Update-IOTWPartnerAccount",
               "Update-IOTWPosition",
               "Update-IOTWResourceEventConfiguration",
               "Update-IOTWWirelessDevice",
               "Update-IOTWWirelessGateway")
}

_awsArgumentCompleterRegistration $IOTW_SelectCompleters $IOTW_SelectMap


# SIG # Begin signature block
# MIIurwYJKoZIhvcNAQcCoIIuoDCCLpwCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCDaJzwtlX69HjXm
# gdPcbghFDy+YFrsGbhhKcJv6/9qhp6CCFB0wggXAMIIEqKADAgECAhAP0bvKeWvX
# +N1MguEKmpYxMA0GCSqGSIb3DQEBCwUAMGwxCzAJBgNVBAYTAlVTMRUwEwYDVQQK
# EwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xKzApBgNV
# BAMTIkRpZ2lDZXJ0IEhpZ2ggQXNzdXJhbmNlIEVWIFJvb3QgQ0EwHhcNMjIwMTEz
# MDAwMDAwWhcNMzExMTA5MjM1OTU5WjBiMQswCQYDVQQGEwJVUzEVMBMGA1UEChMM
# RGlnaUNlcnQgSW5jMRkwFwYDVQQLExB3d3cuZGlnaWNlcnQuY29tMSEwHwYDVQQD
# ExhEaWdpQ2VydCBUcnVzdGVkIFJvb3QgRzQwggIiMA0GCSqGSIb3DQEBAQUAA4IC
# DwAwggIKAoICAQC/5pBzaN675F1KPDAiMGkz7MKnJS7JIT3yithZwuEppz1Yq3aa
# za57G4QNxDAf8xukOBbrVsaXbR2rsnnyyhHS5F/WBTxSD1Ifxp4VpX6+n6lXFllV
# cq9ok3DCsrp1mWpzMpTREEQQLt+C8weE5nQ7bXHiLQwb7iDVySAdYyktzuxeTsiT
# +CFhmzTrBcZe7FsavOvJz82sNEBfsXpm7nfISKhmV1efVFiODCu3T6cw2Vbuyntd
# 463JT17lNecxy9qTXtyOj4DatpGYQJB5w3jHtrHEtWoYOAMQjdjUN6QuBX2I9YI+
# EJFwq1WCQTLX2wRzKm6RAXwhTNS8rhsDdV14Ztk6MUSaM0C/CNdaSaTC5qmgZ92k
# J7yhTzm1EVgX9yRcRo9k98FpiHaYdj1ZXUJ2h4mXaXpI8OCiEhtmmnTK3kse5w5j
# rubU75KSOp493ADkRSWJtppEGSt+wJS00mFt6zPZxd9LBADMfRyVw4/3IbKyEbe7
# f/LVjHAsQWCqsWMYRJUadmJ+9oCw++hkpjPRiQfhvbfmQ6QYuKZ3AeEPlAwhHbJU
# KSWJbOUOUlFHdL4mrLZBdd56rF+NP8m800ERElvlEFDrMcXKchYiCd98THU/Y+wh
# X8QgUWtvsauGi0/C1kVfnSD8oR7FwI+isX4KJpn15GkvmB0t9dmpsh3lGwIDAQAB
# o4IBZjCCAWIwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQU7NfjgtJxXWRM3y5n
# P+e6mK4cD08wHwYDVR0jBBgwFoAUsT7DaQP4v0cB1JgmGggC72NkK8MwDgYDVR0P
# AQH/BAQDAgGGMBMGA1UdJQQMMAoGCCsGAQUFBwMDMH8GCCsGAQUFBwEBBHMwcTAk
# BggrBgEFBQcwAYYYaHR0cDovL29jc3AuZGlnaWNlcnQuY29tMEkGCCsGAQUFBzAC
# hj1odHRwOi8vY2FjZXJ0cy5kaWdpY2VydC5jb20vRGlnaUNlcnRIaWdoQXNzdXJh
# bmNlRVZSb290Q0EuY3J0MEsGA1UdHwREMEIwQKA+oDyGOmh0dHA6Ly9jcmwzLmRp
# Z2ljZXJ0LmNvbS9EaWdpQ2VydEhpZ2hBc3N1cmFuY2VFVlJvb3RDQS5jcmwwHAYD
# VR0gBBUwEzAHBgVngQwBAzAIBgZngQwBBAEwDQYJKoZIhvcNAQELBQADggEBAEHx
# qRH0DxNHecllao3A7pgEpMbjDPKisedfYk/ak1k2zfIe4R7sD+EbP5HU5A/C5pg0
# /xkPZigfT2IxpCrhKhO61z7H0ZL+q93fqpgzRh9Onr3g7QdG64AupP2uU7SkwaT1
# IY1rzAGt9Rnu15ClMlIr28xzDxj4+87eg3Gn77tRWwR2L62t0+od/P1Tk+WMieNg
# GbngLyOOLFxJy34riDkruQZhiPOuAnZ2dMFkkbiJUZflhX0901emWG4f7vtpYeJa
# 3Cgh6GO6Ps9W7Zrk9wXqyvPsEt84zdp7PiuTUy9cUQBY3pBIowrHC/Q7bVUx8ALM
# R3eWUaNetbxcyEMRoacwggawMIIEmKADAgECAhAIrUCyYNKcTJ9ezam9k67ZMA0G
# CSqGSIb3DQEBDAUAMGIxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJ
# bmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xITAfBgNVBAMTGERpZ2lDZXJ0
# IFRydXN0ZWQgUm9vdCBHNDAeFw0yMTA0MjkwMDAwMDBaFw0zNjA0MjgyMzU5NTla
# MGkxCzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwgSW5jLjFBMD8GA1UE
# AxM4RGlnaUNlcnQgVHJ1c3RlZCBHNCBDb2RlIFNpZ25pbmcgUlNBNDA5NiBTSEEz
# ODQgMjAyMSBDQTEwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDVtC9C
# 0CiteLdd1TlZG7GIQvUzjOs9gZdwxbvEhSYwn6SOaNhc9es0JAfhS0/TeEP0F9ce
# 2vnS1WcaUk8OoVf8iJnBkcyBAz5NcCRks43iCH00fUyAVxJrQ5qZ8sU7H/Lvy0da
# E6ZMswEgJfMQ04uy+wjwiuCdCcBlp/qYgEk1hz1RGeiQIXhFLqGfLOEYwhrMxe6T
# SXBCMo/7xuoc82VokaJNTIIRSFJo3hC9FFdd6BgTZcV/sk+FLEikVoQ11vkunKoA
# FdE3/hoGlMJ8yOobMubKwvSnowMOdKWvObarYBLj6Na59zHh3K3kGKDYwSNHR7Oh
# D26jq22YBoMbt2pnLdK9RBqSEIGPsDsJ18ebMlrC/2pgVItJwZPt4bRc4G/rJvmM
# 1bL5OBDm6s6R9b7T+2+TYTRcvJNFKIM2KmYoX7BzzosmJQayg9Rc9hUZTO1i4F4z
# 8ujo7AqnsAMrkbI2eb73rQgedaZlzLvjSFDzd5Ea/ttQokbIYViY9XwCFjyDKK05
# huzUtw1T0PhH5nUwjewwk3YUpltLXXRhTT8SkXbev1jLchApQfDVxW0mdmgRQRNY
# mtwmKwH0iU1Z23jPgUo+QEdfyYFQc4UQIyFZYIpkVMHMIRroOBl8ZhzNeDhFMJlP
# /2NPTLuqDQhTQXxYPUez+rbsjDIJAsxsPAxWEQIDAQABo4IBWTCCAVUwEgYDVR0T
# AQH/BAgwBgEB/wIBADAdBgNVHQ4EFgQUaDfg67Y7+F8Rhvv+YXsIiGX0TkIwHwYD
# VR0jBBgwFoAU7NfjgtJxXWRM3y5nP+e6mK4cD08wDgYDVR0PAQH/BAQDAgGGMBMG
# A1UdJQQMMAoGCCsGAQUFBwMDMHcGCCsGAQUFBwEBBGswaTAkBggrBgEFBQcwAYYY
# aHR0cDovL29jc3AuZGlnaWNlcnQuY29tMEEGCCsGAQUFBzAChjVodHRwOi8vY2Fj
# ZXJ0cy5kaWdpY2VydC5jb20vRGlnaUNlcnRUcnVzdGVkUm9vdEc0LmNydDBDBgNV
# HR8EPDA6MDigNqA0hjJodHRwOi8vY3JsMy5kaWdpY2VydC5jb20vRGlnaUNlcnRU
# cnVzdGVkUm9vdEc0LmNybDAcBgNVHSAEFTATMAcGBWeBDAEDMAgGBmeBDAEEATAN
# BgkqhkiG9w0BAQwFAAOCAgEAOiNEPY0Idu6PvDqZ01bgAhql+Eg08yy25nRm95Ry
# sQDKr2wwJxMSnpBEn0v9nqN8JtU3vDpdSG2V1T9J9Ce7FoFFUP2cvbaF4HZ+N3HL
# IvdaqpDP9ZNq4+sg0dVQeYiaiorBtr2hSBh+3NiAGhEZGM1hmYFW9snjdufE5Btf
# Q/g+lP92OT2e1JnPSt0o618moZVYSNUa/tcnP/2Q0XaG3RywYFzzDaju4ImhvTnh
# OE7abrs2nfvlIVNaw8rpavGiPttDuDPITzgUkpn13c5UbdldAhQfQDN8A+KVssIh
# dXNSy0bYxDQcoqVLjc1vdjcshT8azibpGL6QB7BDf5WIIIJw8MzK7/0pNVwfiThV
# 9zeKiwmhywvpMRr/LhlcOXHhvpynCgbWJme3kuZOX956rEnPLqR0kq3bPKSchh/j
# wVYbKyP/j7XqiHtwa+aguv06P0WmxOgWkVKLQcBIhEuWTatEQOON8BUozu3xGFYH
# Ki8QxAwIZDwzj64ojDzLj4gLDb879M4ee47vtevLt/B3E+bnKD+sEq6lLyJsQfmC
# XBVmzGwOysWGw/YmMwwHS6DTBwJqakAwSEs0qFEgu60bhQjiWQ1tygVQK+pKHJ6l
# /aCnHwZ05/LWUpD9r4VIIflXO7ScA+2GRfS0YW6/aOImYIbqyK+p/pQd52MbOoZW
# eE4wggehMIIFiaADAgECAhALyko14sGCglkXWPsT8gmbMA0GCSqGSIb3DQEBCwUA
# MGkxCzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwgSW5jLjFBMD8GA1UE
# AxM4RGlnaUNlcnQgVHJ1c3RlZCBHNCBDb2RlIFNpZ25pbmcgUlNBNDA5NiBTSEEz
# ODQgMjAyMSBDQTEwHhcNMjExMjI4MDAwMDAwWhcNMjMwMTAzMjM1OTU5WjCB9jEd
# MBsGA1UEDwwUUHJpdmF0ZSBPcmdhbml6YXRpb24xEzARBgsrBgEEAYI3PAIBAxMC
# VVMxGTAXBgsrBgEEAYI3PAIBAhMIRGVsYXdhcmUxEDAOBgNVBAUTBzQxNTI5NTQx
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdTZWF0
# dGxlMSIwIAYDVQQKExlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMuMRcwFQYDVQQL
# Ew5TREtzIGFuZCBUb29sczEiMCAGA1UEAxMZQW1hem9uIFdlYiBTZXJ2aWNlcywg
# SW5jLjCCAaIwDQYJKoZIhvcNAQEBBQADggGPADCCAYoCggGBAKHRLdQSyJ6AfhQ8
# U7Gi6le7gshUhu34xQ7jaTCfpKaKQRGu+oNfAYDRSSfh498eK+jFnGHU/TMzVHEg
# Bb4TUrc1e2f5LHhXAtYTJK0uis9OJ5n3MjHwOJt/uGSSMUAIIIselvbSF2mOE0lI
# z0CNMIlUiXI9O+y9+FJP7Vsg/NU/zAVsQ4Ok0GLd+Yp566nRuj9aNU+L+TxRhSHA
# 7KKjJ9oE0mVblUGQaeNrOd1Ql9djJy0pg6oT2s9Peh8lqB3tUsMaoQ/FMV0P/e1S
# 6V3yFg/I1OvQdtm29ryJTdg9ZvIV/FGnIYdW5s5T8t//nf+7LToQVhpML/ZWEhFR
# Aa6We80Y8zs9glIPDZyYmi6OPbpY7kVHa4dr8S49tPwrVMjC3hk9v9S6poDx/hR9
# kytwVt1Lo4LjAlpmKLeHVmOnn5uenpXqFOJMbTMYmciwHz8yWJwZYMKKLJPCGa79
# xaAkZj9HCop5yPUPccqjyz2i0v/Pt8yFH77s8q86e99O2a+/oQIDAQABo4ICNTCC
# AjEwHwYDVR0jBBgwFoAUaDfg67Y7+F8Rhvv+YXsIiGX0TkIwHQYDVR0OBBYEFGml
# Ip+0bnVEmnOvWcJjnCup9DbsMC4GA1UdEQQnMCWgIwYIKwYBBQUHCAOgFzAVDBNV
# Uy1ERUxBV0FSRS00MTUyOTU0MA4GA1UdDwEB/wQEAwIHgDATBgNVHSUEDDAKBggr
# BgEFBQcDAzCBtQYDVR0fBIGtMIGqMFOgUaBPhk1odHRwOi8vY3JsMy5kaWdpY2Vy
# dC5jb20vRGlnaUNlcnRUcnVzdGVkRzRDb2RlU2lnbmluZ1JTQTQwOTZTSEEzODQy
# MDIxQ0ExLmNybDBToFGgT4ZNaHR0cDovL2NybDQuZGlnaWNlcnQuY29tL0RpZ2lD
# ZXJ0VHJ1c3RlZEc0Q29kZVNpZ25pbmdSU0E0MDk2U0hBMzg0MjAyMUNBMS5jcmww
# PQYDVR0gBDYwNDAyBgVngQwBAzApMCcGCCsGAQUFBwIBFhtodHRwOi8vd3d3LmRp
# Z2ljZXJ0LmNvbS9DUFMwgZQGCCsGAQUFBwEBBIGHMIGEMCQGCCsGAQUFBzABhhho
# dHRwOi8vb2NzcC5kaWdpY2VydC5jb20wXAYIKwYBBQUHMAKGUGh0dHA6Ly9jYWNl
# cnRzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydFRydXN0ZWRHNENvZGVTaWduaW5nUlNB
# NDA5NlNIQTM4NDIwMjFDQTEuY3J0MAwGA1UdEwEB/wQCMAAwDQYJKoZIhvcNAQEL
# BQADggIBALlYa6PSDPPulVJbqEi7XGz23lFZwYa1PiXk+PkJO2HDXv2zep26LZri
# wBHT2yA/KbDvbwZpf4VOBKn5lQC9R+DsgwW/xZbNq7y3cWf9Ad1AQ9Do/FXfBqVO
# 1if+GpqFbqUme5wOjn8/8dc4nFR4erbDgkM4ICn/astBigYnfM5wTO+J8ex+7fE2
# D1kFAwfZAuiRNdDreVMDlYXpJMQ4CtTKVLHYentLR747zzRjO4PqgL1exvbvpOMZ
# lSDLWhaDjtKwUDb645ziHDA3DXe8K51+hIFuadKTinJa8Pfsbgg2W7aTfBdi2gTy
# XkeVJ836631Ks4KD3cXui9Jx2PWRAVxKIEvXuebZ09Mph2jiBH75urqS57i1mpS7
# OA5lIj7a7NIYsVl26PVpJUEr3LRKV8GO3tRC7KP0zE7sB7k2VQKwBXbsifq/vpcm
# eyy4OeQbZ1i8GwZLPHuygP9exTWK2o2wWByJs62Wdk6JmSREvr9Wr59BVNbQfRSR
# aF9q058bBK68hGZtDBpJ9gJX4V12DI2UpSbcGf10+afL1J4zFDv98GIGkgmfLQJU
# pJeC/FnNrEXJbINndCsOb6gdLvLX1grMdUPmPkpRZyvG3HEyEMCV5ODMItTx7K6T
# DyeZDIXXP5oBnBMK9EjtRD3XkEb9dDfuzCrdlTpEoTElt2mGuEE7MYIZ6DCCGeQC
# AQEwfTBpMQswCQYDVQQGEwJVUzEXMBUGA1UEChMORGlnaUNlcnQsIEluYy4xQTA/
# BgNVBAMTOERpZ2lDZXJ0IFRydXN0ZWQgRzQgQ29kZSBTaWduaW5nIFJTQTQwOTYg
# U0hBMzg0IDIwMjEgQ0ExAhALyko14sGCglkXWPsT8gmbMA0GCWCGSAFlAwQCAQUA
# oHwwEAYKKwYBBAGCNwIBDDECMAAwGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQw
# HAYKKwYBBAGCNwIBCzEOMAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEILoV
# uwbnRjlWYeBNQzBnpt0YnJu6ofdsRU2myOAGFfG9MA0GCSqGSIb3DQEBAQUABIIB
# gJAr1L9s31vH0vg6ffpJRtHyUL0Y/pRfsOlCdb8dWW244WQT1nIYXTxwg2u5MboO
# Y//sLNJ4dlNUuBzNvSx6jryCyjAOpyIU1RhcQ5aJqFsNK46Jd6r2bDsQMujrSYWh
# ykN8UT4r24Iobmvfqe4zwF+/QpuWCs8Z7Wdop9yNdZSh20TbQwWXqI4QwXPbE3Yu
# ylmzZqj+PL4OvYrWSn4QmyDCSlxtm7dfFF9PTN4YqA3PJOvt19szt0+THvf1DIrD
# e+Ydwj6pLwcDGWPD0sjbCehpU8BATEzdjXZoDEZ9lzNUk09q8ecWsncrn9XqY7IZ
# QdXgdRy9R00l0NXOrxmebnwpzImTbLgWIBwQlW5zWPtubbAI9Sr4rG4kMEWV3fed
# 3g6QGr3JD+303yMuUubIKgCOsUkdFshY5lnBRiex6Ir7e/4pdH3o4y/EYF+esL/P
# 4DXcBsr7jPvXIole5qVgUu3dPWEAfgwOD2lX1J83irxjshzcwblDhgv4yFZTkQ5J
# XKGCFz4wghc6BgorBgEEAYI3AwMBMYIXKjCCFyYGCSqGSIb3DQEHAqCCFxcwghcT
# AgEDMQ8wDQYJYIZIAWUDBAIBBQAweAYLKoZIhvcNAQkQAQSgaQRnMGUCAQEGCWCG
# SAGG/WwHATAxMA0GCWCGSAFlAwQCAQUABCBFye7EHq7H6X+q9H4yws9ePw/Dv8Uc
# IWiTQ8ZxrxW+ZQIRAJ5mgxlWxobJfoDKtKudlg8YDzIwMjIxMDI2MjEwMzQyWqCC
# EwcwggbAMIIEqKADAgECAhAMTWlyS5T6PCpKPSkHgD1aMA0GCSqGSIb3DQEBCwUA
# MGMxCzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwgSW5jLjE7MDkGA1UE
# AxMyRGlnaUNlcnQgVHJ1c3RlZCBHNCBSU0E0MDk2IFNIQTI1NiBUaW1lU3RhbXBp
# bmcgQ0EwHhcNMjIwOTIxMDAwMDAwWhcNMzMxMTIxMjM1OTU5WjBGMQswCQYDVQQG
# EwJVUzERMA8GA1UEChMIRGlnaUNlcnQxJDAiBgNVBAMTG0RpZ2lDZXJ0IFRpbWVz
# dGFtcCAyMDIyIC0gMjCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAM/s
# pSY6xqnya7uNwQ2a26HoFIV0MxomrNAcVR4eNm28klUMYfSdCXc9FZYIL2tkpP0G
# gxbXkZI4HDEClvtysZc6Va8z7GGK6aYo25BjXL2JU+A6LYyHQq4mpOS7eHi5ehbh
# VsbAumRTuyoW51BIu4hpDIjG8b7gL307scpTjUCDHufLckkoHkyAHoVW54Xt8mG8
# qjoHffarbuVm3eJc9S/tjdRNlYRo44DLannR0hCRRinrPibytIzNTLlmyLuqUDgN
# 5YyUXRlav/V7QG5vFqianJVHhoV5PgxeZowaCiS+nKrSnLb3T254xCg/oxwPUAY3
# ugjZNaa1Htp4WB056PhMkRCWfk3h3cKtpX74LRsf7CtGGKMZ9jn39cFPcS6JAxGi
# S7uYv/pP5Hs27wZE5FX/NurlfDHn88JSxOYWe1p+pSVz28BqmSEtY+VZ9U0vkB8n
# t9KrFOU4ZodRCGv7U0M50GT6Vs/g9ArmFG1keLuY/ZTDcyHzL8IuINeBrNPxB9Th
# vdldS24xlCmL5kGkZZTAWOXlLimQprdhZPrZIGwYUWC6poEPCSVT8b876asHDmoH
# OWIZydaFfxPZjXnPYsXs4Xu5zGcTB5rBeO3GiMiwbjJ5xwtZg43G7vUsfHuOy2SJ
# 8bHEuOdTXl9V0n0ZKVkDTvpd6kVzHIR+187i1Dp3AgMBAAGjggGLMIIBhzAOBgNV
# HQ8BAf8EBAMCB4AwDAYDVR0TAQH/BAIwADAWBgNVHSUBAf8EDDAKBggrBgEFBQcD
# CDAgBgNVHSAEGTAXMAgGBmeBDAEEAjALBglghkgBhv1sBwEwHwYDVR0jBBgwFoAU
# uhbZbU2FL3MpdpovdYxqII+eyG8wHQYDVR0OBBYEFGKK3tBh/I8xFO2XC809KpQU
# 31KcMFoGA1UdHwRTMFEwT6BNoEuGSWh0dHA6Ly9jcmwzLmRpZ2ljZXJ0LmNvbS9E
# aWdpQ2VydFRydXN0ZWRHNFJTQTQwOTZTSEEyNTZUaW1lU3RhbXBpbmdDQS5jcmww
# gZAGCCsGAQUFBwEBBIGDMIGAMCQGCCsGAQUFBzABhhhodHRwOi8vb2NzcC5kaWdp
# Y2VydC5jb20wWAYIKwYBBQUHMAKGTGh0dHA6Ly9jYWNlcnRzLmRpZ2ljZXJ0LmNv
# bS9EaWdpQ2VydFRydXN0ZWRHNFJTQTQwOTZTSEEyNTZUaW1lU3RhbXBpbmdDQS5j
# cnQwDQYJKoZIhvcNAQELBQADggIBAFWqKhrzRvN4Vzcw/HXjT9aFI/H8+ZU5myXm
# 93KKmMN31GT8Ffs2wklRLHiIY1UJRjkA/GnUypsp+6M/wMkAmxMdsJiJ3HjyzXyF
# zVOdr2LiYWajFCpFh0qYQitQ/Bu1nggwCfrkLdcJiXn5CeaIzn0buGqim8FTYAno
# o7id160fHLjsmEHw9g6A++T/350Qp+sAul9Kjxo6UrTqvwlJFTU2WZoPVNKyG39+
# XgmtdlSKdG3K0gVnK3br/5iyJpU4GYhEFOUKWaJr5yI+RCHSPxzAm+18SLLYkgyR
# TzxmlK9dAlPrnuKe5NMfhgFknADC6Vp0dQ094XmIvxwBl8kZI4DXNlpflhaxYwzG
# RkA7zl011Fk+Q5oYrsPJy8P7mxNfarXH4PMFw1nfJ2Ir3kHJU7n/NBBn9iYymHv+
# XEKUgZSCnawKi8ZLFUrTmJBFYDOA4CPe+AOk9kVH5c64A0JH6EE2cXet/aLol3RO
# LtoeHYxayB6a1cLwxiKoT5u92ByaUcQvmvZfpyeXupYuhVfAYOd4Vn9q78KVmksR
# AsiCnMkaBXy6cbVOepls9Oie1FqYyJ+/jbsYXEP10Cro4mLueATbvdH7WwqocH7w
# l4R44wgDXUcsY6glOJcB0j862uXl9uab3H4szP8XTE0AotjWAQ64i+7m4HJViSwn
# GWH2dwGMMIIGrjCCBJagAwIBAgIQBzY3tyRUfNhHrP0oZipeWzANBgkqhkiG9w0B
# AQsFADBiMQswCQYDVQQGEwJVUzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMRkwFwYD
# VQQLExB3d3cuZGlnaWNlcnQuY29tMSEwHwYDVQQDExhEaWdpQ2VydCBUcnVzdGVk
# IFJvb3QgRzQwHhcNMjIwMzIzMDAwMDAwWhcNMzcwMzIyMjM1OTU5WjBjMQswCQYD
# VQQGEwJVUzEXMBUGA1UEChMORGlnaUNlcnQsIEluYy4xOzA5BgNVBAMTMkRpZ2lD
# ZXJ0IFRydXN0ZWQgRzQgUlNBNDA5NiBTSEEyNTYgVGltZVN0YW1waW5nIENBMIIC
# IjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAxoY1BkmzwT1ySVFVxyUDxPKR
# N6mXUaHW0oPRnkyibaCwzIP5WvYRoUQVQl+kiPNo+n3znIkLf50fng8zH1ATCyZz
# lm34V6gCff1DtITaEfFzsbPuK4CEiiIY3+vaPcQXf6sZKz5C3GeO6lE98NZW1Oco
# LevTsbV15x8GZY2UKdPZ7Gnf2ZCHRgB720RBidx8ald68Dd5n12sy+iEZLRS8nZH
# 92GDGd1ftFQLIWhuNyG7QKxfst5Kfc71ORJn7w6lY2zkpsUdzTYNXNXmG6jBZHRA
# p8ByxbpOH7G1WE15/tePc5OsLDnipUjW8LAxE6lXKZYnLvWHpo9OdhVVJnCYJn+g
# GkcgQ+NDY4B7dW4nJZCYOjgRs/b2nuY7W+yB3iIU2YIqx5K/oN7jPqJz+ucfWmyU
# 8lKVEStYdEAoq3NDzt9KoRxrOMUp88qqlnNCaJ+2RrOdOqPVA+C/8KI8ykLcGEh/
# FDTP0kyr75s9/g64ZCr6dSgkQe1CvwWcZklSUPRR8zZJTYsg0ixXNXkrqPNFYLwj
# jVj33GHek/45wPmyMKVM1+mYSlg+0wOI/rOP015LdhJRk8mMDDtbiiKowSYI+RQQ
# EgN9XyO7ZONj4KbhPvbCdLI/Hgl27KtdRnXiYKNYCQEoAA6EVO7O6V3IXjASvUae
# tdN2udIOa5kM0jO0zbECAwEAAaOCAV0wggFZMBIGA1UdEwEB/wQIMAYBAf8CAQAw
# HQYDVR0OBBYEFLoW2W1NhS9zKXaaL3WMaiCPnshvMB8GA1UdIwQYMBaAFOzX44LS
# cV1kTN8uZz/nupiuHA9PMA4GA1UdDwEB/wQEAwIBhjATBgNVHSUEDDAKBggrBgEF
# BQcDCDB3BggrBgEFBQcBAQRrMGkwJAYIKwYBBQUHMAGGGGh0dHA6Ly9vY3NwLmRp
# Z2ljZXJ0LmNvbTBBBggrBgEFBQcwAoY1aHR0cDovL2NhY2VydHMuZGlnaWNlcnQu
# Y29tL0RpZ2lDZXJ0VHJ1c3RlZFJvb3RHNC5jcnQwQwYDVR0fBDwwOjA4oDagNIYy
# aHR0cDovL2NybDMuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0VHJ1c3RlZFJvb3RHNC5j
# cmwwIAYDVR0gBBkwFzAIBgZngQwBBAIwCwYJYIZIAYb9bAcBMA0GCSqGSIb3DQEB
# CwUAA4ICAQB9WY7Ak7ZvmKlEIgF+ZtbYIULhsBguEE0TzzBTzr8Y+8dQXeJLKftw
# ig2qKWn8acHPHQfpPmDI2AvlXFvXbYf6hCAlNDFnzbYSlm/EUExiHQwIgqgWvalW
# zxVzjQEiJc6VaT9Hd/tydBTX/6tPiix6q4XNQ1/tYLaqT5Fmniye4Iqs5f2MvGQm
# h2ySvZ180HAKfO+ovHVPulr3qRCyXen/KFSJ8NWKcXZl2szwcqMj+sAngkSumScb
# qyQeJsG33irr9p6xeZmBo1aGqwpFyd/EjaDnmPv7pp1yr8THwcFqcdnGE4AJxLaf
# zYeHJLtPo0m5d2aR8XKc6UsCUqc3fpNTrDsdCEkPlM05et3/JWOZJyw9P2un8WbD
# Qc1PtkCbISFA0LcTJM3cHXg65J6t5TRxktcma+Q4c6umAU+9Pzt4rUyt+8SVe+0K
# XzM5h0F4ejjpnOHdI/0dKNPH+ejxmF/7K9h+8kaddSweJywm228Vex4Ziza4k9Tm
# 8heZWcpw8De/mADfIBZPJ/tgZxahZrrdVcA6KYawmKAr7ZVBtzrVFZgxtGIJDwq9
# gdkT/r+k0fNX2bwE+oLeMt8EifAAzV3C+dAjfwAL5HYCJtnwZXZCpimHCUcr5n8a
# pIUP/JiW9lVUKx+A+sDyDivl1vupL0QVSucTDh3bNzgaoSv27dZ8/DCCBY0wggR1
# oAMCAQICEA6bGI750C3n79tQ4ghAGFowDQYJKoZIhvcNAQEMBQAwZTELMAkGA1UE
# BhMCVVMxFTATBgNVBAoTDERpZ2lDZXJ0IEluYzEZMBcGA1UECxMQd3d3LmRpZ2lj
# ZXJ0LmNvbTEkMCIGA1UEAxMbRGlnaUNlcnQgQXNzdXJlZCBJRCBSb290IENBMB4X
# DTIyMDgwMTAwMDAwMFoXDTMxMTEwOTIzNTk1OVowYjELMAkGA1UEBhMCVVMxFTAT
# BgNVBAoTDERpZ2lDZXJ0IEluYzEZMBcGA1UECxMQd3d3LmRpZ2ljZXJ0LmNvbTEh
# MB8GA1UEAxMYRGlnaUNlcnQgVHJ1c3RlZCBSb290IEc0MIICIjANBgkqhkiG9w0B
# AQEFAAOCAg8AMIICCgKCAgEAv+aQc2jeu+RdSjwwIjBpM+zCpyUuySE98orYWcLh
# Kac9WKt2ms2uexuEDcQwH/MbpDgW61bGl20dq7J58soR0uRf1gU8Ug9SH8aeFaV+
# vp+pVxZZVXKvaJNwwrK6dZlqczKU0RBEEC7fgvMHhOZ0O21x4i0MG+4g1ckgHWMp
# Lc7sXk7Ik/ghYZs06wXGXuxbGrzryc/NrDRAX7F6Zu53yEioZldXn1RYjgwrt0+n
# MNlW7sp7XeOtyU9e5TXnMcvak17cjo+A2raRmECQecN4x7axxLVqGDgDEI3Y1Dek
# LgV9iPWCPhCRcKtVgkEy19sEcypukQF8IUzUvK4bA3VdeGbZOjFEmjNAvwjXWkmk
# wuapoGfdpCe8oU85tRFYF/ckXEaPZPfBaYh2mHY9WV1CdoeJl2l6SPDgohIbZpp0
# yt5LHucOY67m1O+SkjqePdwA5EUlibaaRBkrfsCUtNJhbesz2cXfSwQAzH0clcOP
# 9yGyshG3u3/y1YxwLEFgqrFjGESVGnZifvaAsPvoZKYz0YkH4b235kOkGLimdwHh
# D5QMIR2yVCkliWzlDlJRR3S+Jqy2QXXeeqxfjT/JvNNBERJb5RBQ6zHFynIWIgnf
# fEx1P2PsIV/EIFFrb7GrhotPwtZFX50g/KEexcCPorF+CiaZ9eRpL5gdLfXZqbId
# 5RsCAwEAAaOCATowggE2MA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFOzX44LS
# cV1kTN8uZz/nupiuHA9PMB8GA1UdIwQYMBaAFEXroq/0ksuCMS1Ri6enIZ3zbcgP
# MA4GA1UdDwEB/wQEAwIBhjB5BggrBgEFBQcBAQRtMGswJAYIKwYBBQUHMAGGGGh0
# dHA6Ly9vY3NwLmRpZ2ljZXJ0LmNvbTBDBggrBgEFBQcwAoY3aHR0cDovL2NhY2Vy
# dHMuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0QXNzdXJlZElEUm9vdENBLmNydDBFBgNV
# HR8EPjA8MDqgOKA2hjRodHRwOi8vY3JsMy5kaWdpY2VydC5jb20vRGlnaUNlcnRB
# c3N1cmVkSURSb290Q0EuY3JsMBEGA1UdIAQKMAgwBgYEVR0gADANBgkqhkiG9w0B
# AQwFAAOCAQEAcKC/Q1xV5zhfoKN0Gz22Ftf3v1cHvZqsoYcs7IVeqRq7IviHGmlU
# Iu2kiHdtvRoU9BNKei8ttzjv9P+Aufih9/Jy3iS8UgPITtAq3votVs/59PesMHqa
# i7Je1M/RQ0SbQyHrlnKhSLSZy51PpwYDE3cnRNTnf+hZqPC/Lwum6fI0POz3A8eH
# qNJMQBk1RmppVLC4oVaO7KTVPeix3P0c2PR3WlxUjG/voVA9/HYJaISfb8rbII01
# YBwCA8sgsKxYoA5AY8WYIsGyWfVVa88nq2x2zm8jLfR+cWojayL/ErhULSd+2DrZ
# 8LaHlv1b0VysGMNNn3O3AamfV6peKOK5lDGCA3YwggNyAgEBMHcwYzELMAkGA1UE
# BhMCVVMxFzAVBgNVBAoTDkRpZ2lDZXJ0LCBJbmMuMTswOQYDVQQDEzJEaWdpQ2Vy
# dCBUcnVzdGVkIEc0IFJTQTQwOTYgU0hBMjU2IFRpbWVTdGFtcGluZyBDQQIQDE1p
# ckuU+jwqSj0pB4A9WjANBglghkgBZQMEAgEFAKCB0TAaBgkqhkiG9w0BCQMxDQYL
# KoZIhvcNAQkQAQQwHAYJKoZIhvcNAQkFMQ8XDTIyMTAyNjIxMDM0MlowKwYLKoZI
# hvcNAQkQAgwxHDAaMBgwFgQU84ciTYYzgpI1qZS8vY+W6f4cfHMwLwYJKoZIhvcN
# AQkEMSIEILn0Z0DuVmpLlxIIaZVtm5nCo/Tw89BmVe2k0nVuFYJ6MDcGCyqGSIb3
# DQEJEAIvMSgwJjAkMCIEIMf04b4yKIkgq+ImOr4axPxP5ngcLWTQTIB1V6Ajtbb6
# MA0GCSqGSIb3DQEBAQUABIICADEBOWp5eU0lFiT2OLG99h68R9IJeFDPxpDqiZJ/
# ZClQN56uC+slcNw6x/LwyYOfvYqv6X8f/2tpXtgWN9HpPmZbc+eSwCMJb//UPk+s
# XuGhIE7ANqCxAo5cnvK3ZhhQN36hoH/RuA1PpvI6tO9oCq+YdTWBe+K/iYHNuLi/
# eNZy3NTwNS68rGkfoMJwyLsWEwC6YGDPWVgPRd42IRHxQotwTsNCH/qrqezQaJBg
# JCYj9dPtlsH+X8dB7N9xP9P0SNDaXaZ+mrajFT5b4Pt3BWthpb/Qb1sCnLV7h/jo
# 9pUPVQ/DumgqPy59i3llqaGK69lZhIUsbsmxl6skyiUmo+iq95m4Wy8H7qJZr5n6
# BZFLeMUDJKu2seMonKNW42y3PSBLf1/B1OpMRLy7OrGLKe93Ayi7tgecWm4C0ZR6
# sFcQZVJrTiPtdXGHUiEEk/reOY6t92oclnMClZhrhAtutKnczyCgN6yupaR5M4cR
# aZCPcm1fGIogOD1+4XEptwoSB1e3GjVuix5+x5MqEVWiCLI6BbXp4fxOA5hCcjUt
# DISYkhKdCdvuHNv1+ppSbxsHWGm91ZoNAwGllazLW4Rd1KEkznb3D+dlq366xSEG
# dmyJcmGbqf9VeWuZo2GhnF/2eVzcXGg3PwFb83t5H+euIh9JsWobycOVSB9XAS2q
# ipX+
# SIG # End signature block
