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

# Argument completions for service Amazon GameLift Service


$GML_Completers = {
    param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

    switch ($("$commandName/$parameterName"))
    {
        # Amazon.GameLift.AcceptanceType
        "Confirm-GMLMatch/AcceptanceType"
        {
            $v = "ACCEPT","REJECT"
            break
        }

        # Amazon.GameLift.BackfillMode
        {
            ($_ -eq "New-GMLMatchmakingConfiguration/BackfillMode") -Or
            ($_ -eq "Update-GMLMatchmakingConfiguration/BackfillMode")
        }
        {
            $v = "AUTOMATIC","MANUAL"
            break
        }

        # Amazon.GameLift.BalancingStrategy
        {
            ($_ -eq "New-GMLGameServerGroup/BalancingStrategy") -Or
            ($_ -eq "Update-GMLGameServerGroup/BalancingStrategy")
        }
        {
            $v = "ON_DEMAND_ONLY","SPOT_ONLY","SPOT_PREFERRED"
            break
        }

        # Amazon.GameLift.BuildStatus
        "Get-GMLBuild/Status"
        {
            $v = "FAILED","INITIALIZED","READY"
            break
        }

        # Amazon.GameLift.CertificateType
        "New-GMLFleet/CertificateConfiguration_CertificateType"
        {
            $v = "DISABLED","GENERATED"
            break
        }

        # Amazon.GameLift.ComparisonOperatorType
        "Write-GMLScalingPolicy/ComparisonOperator"
        {
            $v = "GreaterThanOrEqualToThreshold","GreaterThanThreshold","LessThanOrEqualToThreshold","LessThanThreshold"
            break
        }

        # Amazon.GameLift.EC2InstanceType
        {
            ($_ -eq "Get-GMLEC2InstanceLimit/EC2InstanceType") -Or
            ($_ -eq "New-GMLFleet/EC2InstanceType")
        }
        {
            $v = "c3.2xlarge","c3.4xlarge","c3.8xlarge","c3.large","c3.xlarge","c4.2xlarge","c4.4xlarge","c4.8xlarge","c4.large","c4.xlarge","c5.12xlarge","c5.18xlarge","c5.24xlarge","c5.2xlarge","c5.4xlarge","c5.9xlarge","c5.large","c5.xlarge","c5a.12xlarge","c5a.16xlarge","c5a.24xlarge","c5a.2xlarge","c5a.4xlarge","c5a.8xlarge","c5a.large","c5a.xlarge","c5d.12xlarge","c5d.18xlarge","c5d.24xlarge","c5d.2xlarge","c5d.4xlarge","c5d.9xlarge","c5d.large","c5d.xlarge","c6a.12xlarge","c6a.16xlarge","c6a.24xlarge","c6a.2xlarge","c6a.4xlarge","c6a.8xlarge","c6a.large","c6a.xlarge","c6i.12xlarge","c6i.16xlarge","c6i.24xlarge","c6i.2xlarge","c6i.4xlarge","c6i.8xlarge","c6i.large","c6i.xlarge","m3.2xlarge","m3.large","m3.medium","m3.xlarge","m4.10xlarge","m4.2xlarge","m4.4xlarge","m4.large","m4.xlarge","m5.12xlarge","m5.16xlarge","m5.24xlarge","m5.2xlarge","m5.4xlarge","m5.8xlarge","m5.large","m5.xlarge","m5a.12xlarge","m5a.16xlarge","m5a.24xlarge","m5a.2xlarge","m5a.4xlarge","m5a.8xlarge","m5a.large","m5a.xlarge","r3.2xlarge","r3.4xlarge","r3.8xlarge","r3.large","r3.xlarge","r4.16xlarge","r4.2xlarge","r4.4xlarge","r4.8xlarge","r4.large","r4.xlarge","r5.12xlarge","r5.16xlarge","r5.24xlarge","r5.2xlarge","r5.4xlarge","r5.8xlarge","r5.large","r5.xlarge","r5a.12xlarge","r5a.16xlarge","r5a.24xlarge","r5a.2xlarge","r5a.4xlarge","r5a.8xlarge","r5a.large","r5a.xlarge","r5d.12xlarge","r5d.16xlarge","r5d.24xlarge","r5d.2xlarge","r5d.4xlarge","r5d.8xlarge","r5d.large","r5d.xlarge","t2.large","t2.medium","t2.micro","t2.small"
            break
        }

        # Amazon.GameLift.FleetType
        "New-GMLFleet/FleetType"
        {
            $v = "ON_DEMAND","SPOT"
            break
        }

        # Amazon.GameLift.FlexMatchMode
        {
            ($_ -eq "New-GMLMatchmakingConfiguration/FlexMatchMode") -Or
            ($_ -eq "Update-GMLMatchmakingConfiguration/FlexMatchMode")
        }
        {
            $v = "STANDALONE","WITH_QUEUE"
            break
        }

        # Amazon.GameLift.GameServerGroupDeleteOption
        "Remove-GMLGameServerGroup/DeleteOption"
        {
            $v = "FORCE_DELETE","RETAIN","SAFE_DELETE"
            break
        }

        # Amazon.GameLift.GameServerHealthCheck
        "Update-GMLGameServer/HealthCheck"
        {
            $v = "HEALTHY"
            break
        }

        # Amazon.GameLift.GameServerProtectionPolicy
        {
            ($_ -eq "New-GMLGameServerGroup/GameServerProtectionPolicy") -Or
            ($_ -eq "Update-GMLGameServerGroup/GameServerProtectionPolicy")
        }
        {
            $v = "FULL_PROTECTION","NO_PROTECTION"
            break
        }

        # Amazon.GameLift.GameServerUtilizationStatus
        "Update-GMLGameServer/UtilizationStatus"
        {
            $v = "AVAILABLE","UTILIZED"
            break
        }

        # Amazon.GameLift.MetricName
        "Write-GMLScalingPolicy/MetricName"
        {
            $v = "ActivatingGameSessions","ActiveGameSessions","ActiveInstances","AvailableGameSessions","AvailablePlayerSessions","CurrentPlayerSessions","IdleInstances","PercentAvailableGameSessions","PercentIdleInstances","QueueDepth","WaitTime"
            break
        }

        # Amazon.GameLift.OperatingSystem
        "New-GMLBuild/OperatingSystem"
        {
            $v = "AMAZON_LINUX","AMAZON_LINUX_2","WINDOWS_2012"
            break
        }

        # Amazon.GameLift.PlayerSessionCreationPolicy
        "Update-GMLGameSession/PlayerSessionCreationPolicy"
        {
            $v = "ACCEPT_ALL","DENY_ALL"
            break
        }

        # Amazon.GameLift.PolicyType
        "Write-GMLScalingPolicy/PolicyType"
        {
            $v = "RuleBased","TargetBased"
            break
        }

        # Amazon.GameLift.ProtectionPolicy
        {
            ($_ -eq "New-GMLFleet/NewGameSessionProtectionPolicy") -Or
            ($_ -eq "Update-GMLFleetAttribute/NewGameSessionProtectionPolicy") -Or
            ($_ -eq "Update-GMLGameSession/ProtectionPolicy")
        }
        {
            $v = "FullProtection","NoProtection"
            break
        }

        # Amazon.GameLift.RoutingStrategyType
        {
            ($_ -eq "New-GMLAlias/RoutingStrategy_Type") -Or
            ($_ -eq "Update-GMLAlias/RoutingStrategy_Type") -Or
            ($_ -eq "Get-GMLAlias/RoutingStrategyType")
        }
        {
            $v = "SIMPLE","TERMINAL"
            break
        }

        # Amazon.GameLift.ScalingAdjustmentType
        "Write-GMLScalingPolicy/ScalingAdjustmentType"
        {
            $v = "ChangeInCapacity","ExactCapacity","PercentChangeInCapacity"
            break
        }

        # Amazon.GameLift.ScalingStatusType
        "Get-GMLScalingPolicy/StatusFilter"
        {
            $v = "ACTIVE","DELETED","DELETE_REQUESTED","DELETING","ERROR","UPDATE_REQUESTED","UPDATING"
            break
        }

        # Amazon.GameLift.SortOrder
        "Get-GMLGameServerList/SortOrder"
        {
            $v = "ASCENDING","DESCENDING"
            break
        }


    }

    $v |
        Where-Object { $_ -like "$wordToComplete*" } |
        ForEach-Object { New-Object System.Management.Automation.CompletionResult $_, $_, 'ParameterValue', $_ }
}

$GML_map = @{
    "AcceptanceType"=@("Confirm-GMLMatch")
    "BackfillMode"=@("New-GMLMatchmakingConfiguration","Update-GMLMatchmakingConfiguration")
    "BalancingStrategy"=@("New-GMLGameServerGroup","Update-GMLGameServerGroup")
    "CertificateConfiguration_CertificateType"=@("New-GMLFleet")
    "ComparisonOperator"=@("Write-GMLScalingPolicy")
    "DeleteOption"=@("Remove-GMLGameServerGroup")
    "EC2InstanceType"=@("Get-GMLEC2InstanceLimit","New-GMLFleet")
    "FleetType"=@("New-GMLFleet")
    "FlexMatchMode"=@("New-GMLMatchmakingConfiguration","Update-GMLMatchmakingConfiguration")
    "GameServerProtectionPolicy"=@("New-GMLGameServerGroup","Update-GMLGameServerGroup")
    "HealthCheck"=@("Update-GMLGameServer")
    "MetricName"=@("Write-GMLScalingPolicy")
    "NewGameSessionProtectionPolicy"=@("New-GMLFleet","Update-GMLFleetAttribute")
    "OperatingSystem"=@("New-GMLBuild")
    "PlayerSessionCreationPolicy"=@("Update-GMLGameSession")
    "PolicyType"=@("Write-GMLScalingPolicy")
    "ProtectionPolicy"=@("Update-GMLGameSession")
    "RoutingStrategy_Type"=@("New-GMLAlias","Update-GMLAlias")
    "RoutingStrategyType"=@("Get-GMLAlias")
    "ScalingAdjustmentType"=@("Write-GMLScalingPolicy")
    "SortOrder"=@("Get-GMLGameServerList")
    "Status"=@("Get-GMLBuild")
    "StatusFilter"=@("Get-GMLScalingPolicy")
    "UtilizationStatus"=@("Update-GMLGameServer")
}

_awsArgumentCompleterRegistration $GML_Completers $GML_map

$GML_SelectCompleters = {
    param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

    $cmdletType = Invoke-Expression "[Amazon.PowerShell.Cmdlets.GML.$($commandName.Replace('-', ''))Cmdlet]"
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

$GML_SelectMap = @{
    "Select"=@("Confirm-GMLMatch",
               "Request-GMLGameServer",
               "New-GMLAlias",
               "New-GMLBuild",
               "New-GMLFleet",
               "New-GMLFleetLocation",
               "New-GMLGameServerGroup",
               "New-GMLGameSession",
               "New-GMLGameSessionQueue",
               "New-GMLMatchmakingConfiguration",
               "New-GMLMatchmakingRuleSet",
               "New-GMLPlayerSession",
               "New-GMLScript",
               "New-GMLVpcPeeringAuthorization",
               "New-GMLVpcPeeringConnection",
               "Remove-GMLAlias",
               "Remove-GMLBuild",
               "Remove-GMLFleet",
               "Remove-GMLFleetLocation",
               "Remove-GMLGameServerGroup",
               "Remove-GMLGameSessionQueue",
               "Remove-GMLMatchmakingConfiguration",
               "Remove-GMLMatchmakingRuleSet",
               "Remove-GMLScalingPolicy",
               "Remove-GMLScript",
               "Remove-GMLVpcPeeringAuthorization",
               "Remove-GMLVpcPeeringConnection",
               "Unregister-GMLGameServer",
               "Get-GMLAliasDetail",
               "Get-GMLBuildDetail",
               "Get-GMLEC2InstanceLimit",
               "Get-GMLFleetAttribute",
               "Get-GMLFleetCapacity",
               "Get-GMLFleetEvent",
               "Get-GMLFleetLocationAttribute",
               "Get-GMLFleetLocationCapacity",
               "Get-GMLFleetLocationUtilization",
               "Get-GMLFleetPortSetting",
               "Get-GMLFleetUtilization",
               "Get-GMLGameServer",
               "Get-GMLGameServerGroup",
               "Get-GMLGameServerInstance",
               "Get-GMLGameSessionDetail",
               "Get-GMLGameSessionPlacement",
               "Get-GMLGameSessionQueue",
               "Get-GMLGameSession",
               "Get-GMLInstance",
               "Get-GMLMatchmaking",
               "Get-GMLMatchmakingConfiguration",
               "Get-GMLMatchmakingRuleSet",
               "Get-GMLPlayerSession",
               "Get-GMLRuntimeConfiguration",
               "Get-GMLScalingPolicy",
               "Get-GMLScript",
               "Get-GMLVpcPeeringAuthorization",
               "Get-GMLVpcPeeringConnection",
               "Get-GMLGameSessionLogUrl",
               "Get-GMLInstanceAccess",
               "Get-GMLAlias",
               "Get-GMLBuild",
               "Get-GMLFleet",
               "Get-GMLGameServerGroupList",
               "Get-GMLGameServerList",
               "Get-GMLScriptList",
               "Get-GMLResourceTag",
               "Write-GMLScalingPolicy",
               "Register-GMLGameServer",
               "Request-GMLUploadCredential",
               "Resolve-GMLAlias",
               "Resume-GMLGameServerGroup",
               "Find-GMLGameSession",
               "Start-GMLFleetAction",
               "Start-GMLGameSessionPlacement",
               "Start-GMLMatchBackfill",
               "Start-GMLMatchmaking",
               "Stop-GMLFleetAction",
               "Stop-GMLGameSessionPlacement",
               "Stop-GMLMatchmaking",
               "Suspend-GMLGameServerGroup",
               "Add-GMLResourceTag",
               "Remove-GMLResourceTag",
               "Update-GMLAlias",
               "Update-GMLBuild",
               "Update-GMLFleetAttribute",
               "Update-GMLFleetCapacity",
               "Update-GMLFleetPortSetting",
               "Update-GMLGameServer",
               "Update-GMLGameServerGroup",
               "Update-GMLGameSession",
               "Update-GMLGameSessionQueue",
               "Update-GMLMatchmakingConfiguration",
               "Update-GMLRuntimeConfiguration",
               "Update-GMLScript",
               "Test-GMLMatchmakingRuleSetValidity")
}

_awsArgumentCompleterRegistration $GML_SelectCompleters $GML_SelectMap


# SIG # Begin signature block
# MIIurwYJKoZIhvcNAQcCoIIuoDCCLpwCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCAlA6LmJzLyFkOi
# rE4yhXC6OUdBGnRLWIaZ+QJYyzJl4KCCFB0wggXAMIIEqKADAgECAhAP0bvKeWvX
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
# HAYKKwYBBAGCNwIBCzEOMAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEING4
# mBc9M68UephB5SMWdxKAri064fjtOxUeYpSjdAn7MA0GCSqGSIb3DQEBAQUABIIB
# gFAv20Pfnzs270XqwPAcdyzHG5nfkYTmiCroPuV4ngQ32CzC8FnmuUzE6uCWLzNn
# 2GGFwCVQGeE3hIMl3kAPgQU8NFycVlY4QivCyO26o2B8H7UDH7j7QbRX6lSKim0E
# HizSil7somTYOBq4EVkO7WwsDHUbmkm6kaNwnYIbJs6Gu9ho2gd0wQUVMxRtXI+U
# 195BQioL8EzAJnczsP/q4lHSVX5+1qrg3P/8FLzfHWQ7LjaMPmAjO7mYJdiLeM9I
# QKdG+GAQhAKpnWPCHof/wOOqNUeeBJrNAaz/z5t3ATzVBgzyLjR6Xq2tb/du3cX0
# cbmlrgmnx43c0v9zExwz/ly6Hdi3aTRrETafoVTgZIGBF7ADmU0Ju13A2D+rMDPx
# I6OWACIigZN3JPIjid8Kz1AaEJVjbM2+yvd1NgSyaKQ82521PFrhj5nIrG59DWUG
# Rca2XrwORJ/VD+/27jcUey6/Vl/hEA/zAPCX9+cCYcuG5Q2Pf4nvTIUTZ0S/kAYB
# qaGCFz4wghc6BgorBgEEAYI3AwMBMYIXKjCCFyYGCSqGSIb3DQEHAqCCFxcwghcT
# AgEDMQ8wDQYJYIZIAWUDBAIBBQAweAYLKoZIhvcNAQkQAQSgaQRnMGUCAQEGCWCG
# SAGG/WwHATAxMA0GCWCGSAFlAwQCAQUABCBbLZjZKQqK46/cMlLd5313Mo1cTR6J
# q7eOyOEGfvLdOQIRAM3jn0hEuBJ//LxYPZk//xMYDzIwMjIxMDI2MjEwMzI0WqCC
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
# KoZIhvcNAQkQAQQwHAYJKoZIhvcNAQkFMQ8XDTIyMTAyNjIxMDMyNFowKwYLKoZI
# hvcNAQkQAgwxHDAaMBgwFgQU84ciTYYzgpI1qZS8vY+W6f4cfHMwLwYJKoZIhvcN
# AQkEMSIEIFUpuc/NU29lgW3RRZmdxlXcz7kXetiZm0cRWWFkf3otMDcGCyqGSIb3
# DQEJEAIvMSgwJjAkMCIEIMf04b4yKIkgq+ImOr4axPxP5ngcLWTQTIB1V6Ajtbb6
# MA0GCSqGSIb3DQEBAQUABIICAMdBcDq97QOvkDodki6YmR6XlwVgqCs1Mm8DWOZN
# xjEhr5GQlNSObaGn4AyeNVGpVDLAI4OT+sYYShgoVlsRxsuM+MeixY6eWqflgF4g
# WfEbocnQHYDg7Gi0tfe3haqxPxQImXSt+kaDsYW6h+ud5oHon7vz+IkgJwr0rCtI
# KIb2P4tBBAyUQZ/WJkB4yAhoxHOggckqAjijgYZ6k67hfKgHaIcQsJQOPs9M5Mfw
# U/cdVtUklPNVJgkXq1qHFn77rLbigQXYG/TEYSt8G4mU7UuqPFkQ0n0ANJkf3Dh3
# BkVqz6YIfuKaRRkRXBdSR5EaVv2LhZel5J8EHE/N6i5uL1TFPpTw8NNjfnAZPi3p
# sjIn0bXuB1fE0DLNxXfZZ+Y+/6JZKD/ph6Ypw023oSFOvvW71CDt+0Pu9HVDl0gV
# 0JCHc5y00p7QdREutDF7WMofhUp8DQ5oXhcQirThaCELkDAkTHWEeq82v4kKfRMP
# LoWXg6C+ZkUUKoN1EwWNT5u05YDVABtlUeZlmLMKCF6RBc/3otSTTHCtT5QJICvM
# XfJdiRAlj6ZUdvae1u/3jWML4KZ7GpC/EaoXhV03Ynf5Fw4Nd6PhfqiTRryagJuy
# WO/l3d/eOMbT6vgXJae3aVtJ1EFpRpYXAlYMEuflw0XvZpmF5EkWl4jhG6k8nePe
# ZDuO
# SIG # End signature block
