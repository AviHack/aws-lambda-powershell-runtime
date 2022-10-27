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

# Argument completions for service AWS IoT


$IOT_Completers = {
    param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

    switch ($("$commandName/$parameterName"))
    {
        # Amazon.IoT.AggregationTypeName
        {
            ($_ -eq "New-IOTFleetMetric/AggregationType_Name") -Or
            ($_ -eq "Update-IOTFleetMetric/AggregationType_Name")
        }
        {
            $v = "Cardinality","Percentiles","Statistics"
            break
        }

        # Amazon.IoT.AuditFrequency
        {
            ($_ -eq "New-IOTScheduledAudit/Frequency") -Or
            ($_ -eq "Update-IOTScheduledAudit/Frequency")
        }
        {
            $v = "BIWEEKLY","DAILY","MONTHLY","WEEKLY"
            break
        }

        # Amazon.IoT.AuditMitigationActionsExecutionStatus
        "Get-IOTAuditMitigationActionsExecutionList/ActionStatus"
        {
            $v = "CANCELED","COMPLETED","FAILED","IN_PROGRESS","PENDING","SKIPPED"
            break
        }

        # Amazon.IoT.AuditMitigationActionsTaskStatus
        "Get-IOTAuditMitigationActionsTaskList/TaskStatus"
        {
            $v = "CANCELED","COMPLETED","FAILED","IN_PROGRESS"
            break
        }

        # Amazon.IoT.AuditTaskStatus
        "Get-IOTTaskList/TaskStatus"
        {
            $v = "CANCELED","COMPLETED","FAILED","IN_PROGRESS"
            break
        }

        # Amazon.IoT.AuditTaskType
        "Get-IOTTaskList/TaskType"
        {
            $v = "ON_DEMAND_AUDIT_TASK","SCHEDULED_AUDIT_TASK"
            break
        }

        # Amazon.IoT.AuthorizerStatus
        {
            ($_ -eq "Get-IOTAuthorizerList/Status") -Or
            ($_ -eq "New-IOTAuthorizer/Status") -Or
            ($_ -eq "Update-IOTAuthorizer/Status")
        }
        {
            $v = "ACTIVE","INACTIVE"
            break
        }

        # Amazon.IoT.AutoRegistrationStatus
        "Update-IOTCACertificate/NewAutoRegistrationStatus"
        {
            $v = "DISABLE","ENABLE"
            break
        }

        # Amazon.IoT.BehaviorCriteriaType
        {
            ($_ -eq "Get-IOTActiveViolationList/BehaviorCriteriaType") -Or
            ($_ -eq "Get-IOTViolationEventList/BehaviorCriteriaType")
        }
        {
            $v = "MACHINE_LEARNING","STATIC","STATISTICAL"
            break
        }

        # Amazon.IoT.CACertificateStatus
        "Update-IOTCACertificate/NewStatus"
        {
            $v = "ACTIVE","INACTIVE"
            break
        }

        # Amazon.IoT.CACertificateUpdateAction
        {
            ($_ -eq "New-IOTMitigationAction/ActionParams_UpdateCACertificateParams_Action") -Or
            ($_ -eq "Update-IOTMitigationAction/ActionParams_UpdateCACertificateParams_Action")
        }
        {
            $v = "DEACTIVATE"
            break
        }

        # Amazon.IoT.CannedAccessControlList
        {
            ($_ -eq "New-IOTTopicRule/TopicRulePayload_ErrorAction_S3_CannedAcl") -Or
            ($_ -eq "Set-IOTTopicRule/TopicRulePayload_ErrorAction_S3_CannedAcl")
        }
        {
            $v = "authenticated-read","aws-exec-read","bucket-owner-full-control","bucket-owner-read","log-delivery-write","private","public-read","public-read-write"
            break
        }

        # Amazon.IoT.CertificateMode
        "Register-IOTCACertificate/CertificateMode"
        {
            $v = "DEFAULT","SNI_ONLY"
            break
        }

        # Amazon.IoT.CertificateStatus
        {
            ($_ -eq "Update-IOTCertificate/NewStatus") -Or
            ($_ -eq "Register-IOTCertificate/Status") -Or
            ($_ -eq "Register-IOTCertificateWithoutCA/Status")
        }
        {
            $v = "ACTIVE","INACTIVE","PENDING_ACTIVATION","PENDING_TRANSFER","REGISTER_INACTIVE","REVOKED"
            break
        }

        # Amazon.IoT.CustomMetricType
        "New-IOTCustomMetric/MetricType"
        {
            $v = "ip-address-list","number","number-list","string-list"
            break
        }

        # Amazon.IoT.DayOfWeek
        {
            ($_ -eq "New-IOTScheduledAudit/DayOfWeek") -Or
            ($_ -eq "Update-IOTScheduledAudit/DayOfWeek")
        }
        {
            $v = "FRI","MON","SAT","SUN","THU","TUE","WED"
            break
        }

        # Amazon.IoT.DeviceCertificateUpdateAction
        {
            ($_ -eq "New-IOTMitigationAction/ActionParams_UpdateDeviceCertificateParams_Action") -Or
            ($_ -eq "Update-IOTMitigationAction/ActionParams_UpdateDeviceCertificateParams_Action")
        }
        {
            $v = "DEACTIVATE"
            break
        }

        # Amazon.IoT.DeviceDefenderIndexingMode
        "Update-IOTIndexingConfiguration/ThingIndexingConfiguration_DeviceDefenderIndexingMode"
        {
            $v = "OFF","VIOLATIONS"
            break
        }

        # Amazon.IoT.DimensionType
        "New-IOTDimension/Type"
        {
            $v = "TOPIC_FILTER"
            break
        }

        # Amazon.IoT.DimensionValueOperator
        "Get-IOTMetricValueList/DimensionValueOperator"
        {
            $v = "IN","NOT_IN"
            break
        }

        # Amazon.IoT.DomainConfigurationStatus
        "Update-IOTDomainConfiguration/DomainConfigurationStatus"
        {
            $v = "DISABLED","ENABLED"
            break
        }

        # Amazon.IoT.DynamoKeyType
        {
            ($_ -eq "New-IOTTopicRule/TopicRulePayload_ErrorAction_DynamoDB_HashKeyType") -Or
            ($_ -eq "Set-IOTTopicRule/TopicRulePayload_ErrorAction_DynamoDB_HashKeyType") -Or
            ($_ -eq "New-IOTTopicRule/TopicRulePayload_ErrorAction_DynamoDB_RangeKeyType") -Or
            ($_ -eq "Set-IOTTopicRule/TopicRulePayload_ErrorAction_DynamoDB_RangeKeyType")
        }
        {
            $v = "NUMBER","STRING"
            break
        }

        # Amazon.IoT.FleetMetricUnit
        {
            ($_ -eq "New-IOTFleetMetric/Unit") -Or
            ($_ -eq "Update-IOTFleetMetric/Unit")
        }
        {
            $v = "Bits","Bits/Second","Bytes","Bytes/Second","Count","Count/Second","Gigabits","Gigabits/Second","Gigabytes","Gigabytes/Second","Kilobits","Kilobits/Second","Kilobytes","Kilobytes/Second","Megabits","Megabits/Second","Megabytes","Megabytes/Second","Microseconds","Milliseconds","None","Percent","Seconds","Terabits","Terabits/Second","Terabytes","Terabytes/Second"
            break
        }

        # Amazon.IoT.JobExecutionStatus
        {
            ($_ -eq "Get-IOTJobExecutionsForJobList/Status") -Or
            ($_ -eq "Get-IOTJobExecutionsForThingList/Status")
        }
        {
            $v = "CANCELED","FAILED","IN_PROGRESS","QUEUED","REJECTED","REMOVED","SUCCEEDED","TIMED_OUT"
            break
        }

        # Amazon.IoT.JobStatus
        "Get-IOTJobList/Status"
        {
            $v = "CANCELED","COMPLETED","DELETION_IN_PROGRESS","IN_PROGRESS"
            break
        }

        # Amazon.IoT.LogLevel
        {
            ($_ -eq "New-IOTMitigationAction/ActionParams_EnableIoTLoggingParams_LogLevel") -Or
            ($_ -eq "Update-IOTMitigationAction/ActionParams_EnableIoTLoggingParams_LogLevel") -Or
            ($_ -eq "Set-IOTV2LoggingOption/DefaultLogLevel") -Or
            ($_ -eq "Set-IOTLoggingOption/LoggingOptionsPayload_LogLevel") -Or
            ($_ -eq "Set-IOTV2LoggingLevel/LogLevel")
        }
        {
            $v = "DEBUG","DISABLED","ERROR","INFO","WARN"
            break
        }

        # Amazon.IoT.LogTargetType
        {
            ($_ -eq "Set-IOTV2LoggingLevel/LogTarget_TargetType") -Or
            ($_ -eq "Get-IOTV2LoggingLevelList/TargetType") -Or
            ($_ -eq "Remove-IOTV2LoggingLevel/TargetType")
        }
        {
            $v = "CLIENT_ID","DEFAULT","PRINCIPAL_ID","SOURCE_IP","THING_GROUP"
            break
        }

        # Amazon.IoT.MessageFormat
        {
            ($_ -eq "New-IOTTopicRule/TopicRulePayload_ErrorAction_Sns_MessageFormat") -Or
            ($_ -eq "Set-IOTTopicRule/TopicRulePayload_ErrorAction_Sns_MessageFormat")
        }
        {
            $v = "JSON","RAW"
            break
        }

        # Amazon.IoT.MitigationActionType
        "Get-IOTMitigationActionList/ActionType"
        {
            $v = "ADD_THINGS_TO_THING_GROUP","ENABLE_IOT_LOGGING","PUBLISH_FINDING_TO_SNS","REPLACE_DEFAULT_POLICY_VERSION","UPDATE_CA_CERTIFICATE","UPDATE_DEVICE_CERTIFICATE"
            break
        }

        # Amazon.IoT.NamedShadowIndexingMode
        "Update-IOTIndexingConfiguration/ThingIndexingConfiguration_NamedShadowIndexingMode"
        {
            $v = "OFF","ON"
            break
        }

        # Amazon.IoT.OTAUpdateStatus
        "Get-IOTOTAUpdateList/OtaUpdateStatus"
        {
            $v = "CREATE_COMPLETE","CREATE_FAILED","CREATE_IN_PROGRESS","CREATE_PENDING"
            break
        }

        # Amazon.IoT.PolicyTemplateName
        {
            ($_ -eq "New-IOTMitigationAction/ActionParams_ReplaceDefaultPolicyVersionParams_TemplateName") -Or
            ($_ -eq "Update-IOTMitigationAction/ActionParams_ReplaceDefaultPolicyVersionParams_TemplateName")
        }
        {
            $v = "BLANK_POLICY"
            break
        }

        # Amazon.IoT.ReportType
        "Get-IOTThingRegistrationTaskReportList/ReportType"
        {
            $v = "ERRORS","RESULTS"
            break
        }

        # Amazon.IoT.ServiceType
        {
            ($_ -eq "Get-IOTDomainConfigurationList/ServiceType") -Or
            ($_ -eq "New-IOTDomainConfiguration/ServiceType")
        }
        {
            $v = "CREDENTIAL_PROVIDER","DATA","JOBS"
            break
        }

        # Amazon.IoT.Status
        "Get-IOTThingRegistrationTaskList/Status"
        {
            $v = "Cancelled","Cancelling","Completed","Failed","InProgress"
            break
        }

        # Amazon.IoT.TargetSelection
        {
            ($_ -eq "Get-IOTJobList/TargetSelection") -Or
            ($_ -eq "New-IOTJob/TargetSelection") -Or
            ($_ -eq "New-IOTOTAUpdate/TargetSelection")
        }
        {
            $v = "CONTINUOUS","SNAPSHOT"
            break
        }

        # Amazon.IoT.TemplateType
        "New-IOTProvisioningTemplate/Type"
        {
            $v = "FLEET_PROVISIONING","JITP"
            break
        }

        # Amazon.IoT.ThingConnectivityIndexingMode
        "Update-IOTIndexingConfiguration/ThingIndexingConfiguration_ThingConnectivityIndexingMode"
        {
            $v = "OFF","STATUS"
            break
        }

        # Amazon.IoT.ThingGroupIndexingMode
        "Update-IOTIndexingConfiguration/ThingGroupIndexingConfiguration_ThingGroupIndexingMode"
        {
            $v = "OFF","ON"
            break
        }

        # Amazon.IoT.ThingIndexingMode
        "Update-IOTIndexingConfiguration/ThingIndexingConfiguration_ThingIndexingMode"
        {
            $v = "OFF","REGISTRY","REGISTRY_AND_SHADOW"
            break
        }

        # Amazon.IoT.TopicRuleDestinationStatus
        "Update-IOTTopicRuleDestination/Status"
        {
            $v = "DELETING","DISABLED","ENABLED","ERROR","IN_PROGRESS"
            break
        }

        # Amazon.IoT.VerificationState
        {
            ($_ -eq "Get-IOTActiveViolationList/VerificationState") -Or
            ($_ -eq "Get-IOTViolationEventList/VerificationState") -Or
            ($_ -eq "Write-IOTVerificationStateOnViolation/VerificationState")
        }
        {
            $v = "BENIGN_POSITIVE","FALSE_POSITIVE","TRUE_POSITIVE","UNKNOWN"
            break
        }


    }

    $v |
        Where-Object { $_ -like "$wordToComplete*" } |
        ForEach-Object { New-Object System.Management.Automation.CompletionResult $_, $_, 'ParameterValue', $_ }
}

$IOT_map = @{
    "ActionParams_EnableIoTLoggingParams_LogLevel"=@("New-IOTMitigationAction","Update-IOTMitigationAction")
    "ActionParams_ReplaceDefaultPolicyVersionParams_TemplateName"=@("New-IOTMitigationAction","Update-IOTMitigationAction")
    "ActionParams_UpdateCACertificateParams_Action"=@("New-IOTMitigationAction","Update-IOTMitigationAction")
    "ActionParams_UpdateDeviceCertificateParams_Action"=@("New-IOTMitigationAction","Update-IOTMitigationAction")
    "ActionStatus"=@("Get-IOTAuditMitigationActionsExecutionList")
    "ActionType"=@("Get-IOTMitigationActionList")
    "AggregationType_Name"=@("New-IOTFleetMetric","Update-IOTFleetMetric")
    "BehaviorCriteriaType"=@("Get-IOTActiveViolationList","Get-IOTViolationEventList")
    "CertificateMode"=@("Register-IOTCACertificate")
    "DayOfWeek"=@("New-IOTScheduledAudit","Update-IOTScheduledAudit")
    "DefaultLogLevel"=@("Set-IOTV2LoggingOption")
    "DimensionValueOperator"=@("Get-IOTMetricValueList")
    "DomainConfigurationStatus"=@("Update-IOTDomainConfiguration")
    "Frequency"=@("New-IOTScheduledAudit","Update-IOTScheduledAudit")
    "LoggingOptionsPayload_LogLevel"=@("Set-IOTLoggingOption")
    "LogLevel"=@("Set-IOTV2LoggingLevel")
    "LogTarget_TargetType"=@("Set-IOTV2LoggingLevel")
    "MetricType"=@("New-IOTCustomMetric")
    "NewAutoRegistrationStatus"=@("Update-IOTCACertificate")
    "NewStatus"=@("Update-IOTCACertificate","Update-IOTCertificate")
    "OtaUpdateStatus"=@("Get-IOTOTAUpdateList")
    "ReportType"=@("Get-IOTThingRegistrationTaskReportList")
    "ServiceType"=@("Get-IOTDomainConfigurationList","New-IOTDomainConfiguration")
    "Status"=@("Get-IOTAuthorizerList","Get-IOTJobExecutionsForJobList","Get-IOTJobExecutionsForThingList","Get-IOTJobList","Get-IOTThingRegistrationTaskList","New-IOTAuthorizer","Register-IOTCertificate","Register-IOTCertificateWithoutCA","Update-IOTAuthorizer","Update-IOTTopicRuleDestination")
    "TargetSelection"=@("Get-IOTJobList","New-IOTJob","New-IOTOTAUpdate")
    "TargetType"=@("Get-IOTV2LoggingLevelList","Remove-IOTV2LoggingLevel")
    "TaskStatus"=@("Get-IOTAuditMitigationActionsTaskList","Get-IOTTaskList")
    "TaskType"=@("Get-IOTTaskList")
    "ThingGroupIndexingConfiguration_ThingGroupIndexingMode"=@("Update-IOTIndexingConfiguration")
    "ThingIndexingConfiguration_DeviceDefenderIndexingMode"=@("Update-IOTIndexingConfiguration")
    "ThingIndexingConfiguration_NamedShadowIndexingMode"=@("Update-IOTIndexingConfiguration")
    "ThingIndexingConfiguration_ThingConnectivityIndexingMode"=@("Update-IOTIndexingConfiguration")
    "ThingIndexingConfiguration_ThingIndexingMode"=@("Update-IOTIndexingConfiguration")
    "TopicRulePayload_ErrorAction_DynamoDB_HashKeyType"=@("New-IOTTopicRule","Set-IOTTopicRule")
    "TopicRulePayload_ErrorAction_DynamoDB_RangeKeyType"=@("New-IOTTopicRule","Set-IOTTopicRule")
    "TopicRulePayload_ErrorAction_S3_CannedAcl"=@("New-IOTTopicRule","Set-IOTTopicRule")
    "TopicRulePayload_ErrorAction_Sns_MessageFormat"=@("New-IOTTopicRule","Set-IOTTopicRule")
    "Type"=@("New-IOTDimension","New-IOTProvisioningTemplate")
    "Unit"=@("New-IOTFleetMetric","Update-IOTFleetMetric")
    "VerificationState"=@("Get-IOTActiveViolationList","Get-IOTViolationEventList","Write-IOTVerificationStateOnViolation")
}

_awsArgumentCompleterRegistration $IOT_Completers $IOT_map

$IOT_SelectCompleters = {
    param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

    $cmdletType = Invoke-Expression "[Amazon.PowerShell.Cmdlets.IOT.$($commandName.Replace('-', ''))Cmdlet]"
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

$IOT_SelectMap = @{
    "Select"=@("Confirm-IOTCertificateTransfer",
               "Add-IOTThingToBillingGroup",
               "Add-IOTThingToThingGroup",
               "Add-IOTTargetsWithJob",
               "Add-IOTPolicy",
               "Add-IOTPrincipalPolicy",
               "Mount-IOTSecurityProfile",
               "Add-IOTThingPrincipal",
               "Stop-IOTAuditMitigationActionsTask",
               "Stop-IOTAuditTask",
               "Stop-IOTCertificateTransfer",
               "Stop-IOTDetectMitigationActionsTask",
               "Stop-IOTJob",
               "Stop-IOTJobExecution",
               "Clear-IOTDefaultAuthorizer",
               "Confirm-IOTTopicRuleDestination",
               "New-IOTAuditSuppression",
               "New-IOTAuthorizer",
               "New-IOTBillingGroup",
               "New-IOTCertificateFromCsr",
               "New-IOTCustomMetric",
               "New-IOTDimension",
               "New-IOTDomainConfiguration",
               "New-IOTDynamicThingGroup",
               "New-IOTFleetMetric",
               "New-IOTJob",
               "New-IOTJobTemplate",
               "New-IOTKeysAndCertificate",
               "New-IOTMitigationAction",
               "New-IOTOTAUpdate",
               "New-IOTPolicy",
               "New-IOTPolicyVersion",
               "New-IOTProvisioningClaim",
               "New-IOTProvisioningTemplate",
               "New-IOTProvisioningTemplateVersion",
               "New-IOTRoleAlias",
               "New-IOTScheduledAudit",
               "New-IOTSecurityProfile",
               "New-IOTStream",
               "New-IOTThing",
               "New-IOTThingGroup",
               "New-IOTThingType",
               "New-IOTTopicRule",
               "New-IOTTopicRuleDestination",
               "Remove-IOTAccountAuditConfiguration",
               "Remove-IOTAuditSuppression",
               "Remove-IOTAuthorizer",
               "Remove-IOTBillingGroup",
               "Remove-IOTCACertificate",
               "Remove-IOTCertificate",
               "Remove-IOTCustomMetric",
               "Remove-IOTDimension",
               "Remove-IOTDomainConfiguration",
               "Remove-IOTDynamicThingGroup",
               "Remove-IOTFleetMetric",
               "Remove-IOTJob",
               "Remove-IOTJobExecution",
               "Remove-IOTJobTemplate",
               "Remove-IOTMitigationAction",
               "Remove-IOTOTAUpdate",
               "Remove-IOTPolicy",
               "Remove-IOTPolicyVersion",
               "Remove-IOTProvisioningTemplate",
               "Remove-IOTProvisioningTemplateVersion",
               "Remove-IOTRegistrationCode",
               "Remove-IOTRoleAlias",
               "Remove-IOTScheduledAudit",
               "Remove-IOTSecurityProfile",
               "Remove-IOTStream",
               "Remove-IOTThing",
               "Remove-IOTThingGroup",
               "Remove-IOTThingType",
               "Remove-IOTTopicRule",
               "Remove-IOTTopicRuleDestination",
               "Remove-IOTV2LoggingLevel",
               "Set-IOTThingTypeDeprecation",
               "Get-IOTAccountAuditConfiguration",
               "Get-IOTAuditFinding",
               "Get-IOTAuditMitigationActionsTask",
               "Get-IOTAuditSuppression",
               "Get-IOTAuditTask",
               "Get-IOTAuthorizer",
               "Get-IOTBillingGroup",
               "Get-IOTCACertificate",
               "Get-IOTCertificate",
               "Get-IOTCustomMetric",
               "Get-IOTDefaultAuthorizer",
               "Get-IOTDetectMitigationActionsTask",
               "Get-IOTDimension",
               "Get-IOTDomainConfiguration",
               "Get-IOTEndpoint",
               "Get-IOTEventConfiguration",
               "Get-IOTFleetMetric",
               "Get-IOTIndex",
               "Get-IOTJob",
               "Get-IOTJobExecution",
               "Get-IOTJobTemplate",
               "Get-IOTManagedJobTemplate",
               "Get-IOTMitigationAction",
               "Get-IOTProvisioningTemplate",
               "Get-IOTProvisioningTemplateVersion",
               "Get-IOTRoleAlias",
               "Get-IOTScheduledAudit",
               "Get-IOTSecurityProfile",
               "Get-IOTStream",
               "Get-IOTThing",
               "Get-IOTThingGroup",
               "Get-IOTThingRegistrationTask",
               "Get-IOTThingType",
               "Dismount-IOTPolicy",
               "Remove-IOTPrincipalPolicy",
               "Dismount-IOTSecurityProfile",
               "Remove-IOTThingPrincipal",
               "Disable-IOTTopicRule",
               "Enable-IOTTopicRule",
               "Get-IOTBehaviorModelTrainingSummary",
               "Get-IOTBucketsAggregation",
               "Get-IOTCardinality",
               "Get-IOTEffectivePolicy",
               "Get-IOTIndexingConfiguration",
               "Get-IOTJobDocument",
               "Get-IOTLoggingOption",
               "Get-IOTOTAUpdate",
               "Get-IOTPercentile",
               "Get-IOTPolicy",
               "Get-IOTPolicyVersion",
               "Get-IOTRegistrationCode",
               "Get-IOTStatistic",
               "Get-IOTTopicRule",
               "Get-IOTTopicRuleDestination",
               "Get-IOTV2LoggingOption",
               "Get-IOTActiveViolationList",
               "Get-IOTAttachedPolicyList",
               "Get-IOTAuditFindingList",
               "Get-IOTAuditMitigationActionsExecutionList",
               "Get-IOTAuditMitigationActionsTaskList",
               "Get-IOTAuditSuppressionList",
               "Get-IOTTaskList",
               "Get-IOTAuthorizerList",
               "Get-IOTBillingGroupList",
               "Get-IOTCACertificateList",
               "Get-IOTCertificateList",
               "Get-IOTCertificateListByCA",
               "Get-IOTCustomMetricList",
               "Get-IOTDetectMitigationActionsExecutionList",
               "Get-IOTDetectMitigationActionsTaskList",
               "Get-IOTDimensionList",
               "Get-IOTDomainConfigurationList",
               "Get-IOTFleetMetricList",
               "Get-IOTIndexList",
               "Get-IOTJobExecutionsForJobList",
               "Get-IOTJobExecutionsForThingList",
               "Get-IOTJobList",
               "Get-IOTJobTemplateList",
               "Get-IOTManagedJobTemplateList",
               "Get-IOTMetricValueList",
               "Get-IOTMitigationActionList",
               "Get-IOTOTAUpdateList",
               "Get-IOTOutgoingCertificate",
               "Get-IOTPolicyList",
               "Get-IOTPolicyPrincipalList",
               "Get-IOTPolicyVersionList",
               "Get-IOTPrincipalPolicyList",
               "Get-IOTPrincipalThingList",
               "Get-IOTProvisioningTemplateList",
               "Get-IOTProvisioningTemplateVersionList",
               "Get-IOTRoleAliasList",
               "Get-IOTScheduledAuditList",
               "Get-IOTSecurityProfileList",
               "Get-IOTSecurityProfilesForTargetList",
               "Get-IOTStreamList",
               "Get-IOTTagListForResource",
               "Get-IOTTargetsForPolicyList",
               "Get-IOTTargetsForSecurityProfileList",
               "Get-IOTThingGroupList",
               "Get-IOTThingGroupsForThingList",
               "Get-IOTThingPrincipalList",
               "Get-IOTThingRegistrationTaskReportList",
               "Get-IOTThingRegistrationTaskList",
               "Get-IOTThingList",
               "Get-IOTThingsInBillingGroupList",
               "Get-IOTThingsInThingGroupList",
               "Get-IOTThingTypeList",
               "Get-IOTTopicRuleDestinationList",
               "Get-IOTTopicRuleList",
               "Get-IOTV2LoggingLevelList",
               "Get-IOTViolationEventList",
               "Write-IOTVerificationStateOnViolation",
               "Register-IOTCACertificate",
               "Register-IOTCertificate",
               "Register-IOTCertificateWithoutCA",
               "Register-IOTThing",
               "Deny-IOTCertificateTransfer",
               "Remove-IOTThingFromBillingGroup",
               "Remove-IOTThingFromThingGroup",
               "Set-IOTTopicRule",
               "Search-IOTIndex",
               "Set-IOTDefaultAuthorizer",
               "Set-IOTDefaultPolicyVersion",
               "Set-IOTLoggingOption",
               "Set-IOTV2LoggingLevel",
               "Set-IOTV2LoggingOption",
               "Start-IOTAuditMitigationActionsTask",
               "Start-IOTDetectMitigationActionsTask",
               "Start-IOTOnDemandAuditTask",
               "Start-IOTThingRegistrationTask",
               "Stop-IOTThingRegistrationTask",
               "Add-IOTResourceTag",
               "Test-IOTAuthorization",
               "Test-IOTInvokeAuthorizer",
               "Request-IOTCertificateTransfer",
               "Remove-IOTResourceTag",
               "Update-IOTAccountAuditConfiguration",
               "Update-IOTAuditSuppression",
               "Update-IOTAuthorizer",
               "Update-IOTBillingGroup",
               "Update-IOTCACertificate",
               "Update-IOTCertificate",
               "Update-IOTCustomMetric",
               "Update-IOTDimension",
               "Update-IOTDomainConfiguration",
               "Update-IOTDynamicThingGroup",
               "Update-IOTEventConfiguration",
               "Update-IOTFleetMetric",
               "Update-IOTIndexingConfiguration",
               "Update-IOTJob",
               "Update-IOTMitigationAction",
               "Update-IOTProvisioningTemplate",
               "Update-IOTRoleAlias",
               "Update-IOTScheduledAudit",
               "Update-IOTSecurityProfile",
               "Update-IOTStream",
               "Update-IOTThing",
               "Update-IOTThingGroup",
               "Update-IOTThingGroupsForThing",
               "Update-IOTTopicRuleDestination",
               "Test-IOTValidSecurityProfileBehavior")
}

_awsArgumentCompleterRegistration $IOT_SelectCompleters $IOT_SelectMap


# SIG # Begin signature block
# MIIurgYJKoZIhvcNAQcCoIIunzCCLpsCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCC3U+SLRDAxsVfS
# zZ6vqzOxmac0DQbSC89jf6lavzwS66CCFB0wggXAMIIEqKADAgECAhAP0bvKeWvX
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
# DyeZDIXXP5oBnBMK9EjtRD3XkEb9dDfuzCrdlTpEoTElt2mGuEE7MYIZ5zCCGeMC
# AQEwfTBpMQswCQYDVQQGEwJVUzEXMBUGA1UEChMORGlnaUNlcnQsIEluYy4xQTA/
# BgNVBAMTOERpZ2lDZXJ0IFRydXN0ZWQgRzQgQ29kZSBTaWduaW5nIFJTQTQwOTYg
# U0hBMzg0IDIwMjEgQ0ExAhALyko14sGCglkXWPsT8gmbMA0GCWCGSAFlAwQCAQUA
# oHwwEAYKKwYBBAGCNwIBDDECMAAwGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQw
# HAYKKwYBBAGCNwIBCzEOMAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIMSj
# PQThbMLijoVQweJwsmWtyqVgaSqFIIoaqwx6ne6WMA0GCSqGSIb3DQEBAQUABIIB
# gH5Xvin2erTNAsNP9tcmbb22Kxw4CMwhoSt8HoQxBUxV5fZgfB9n5lznZepF7UT3
# y5PC5o1LjqhK5w3N3GRa6D8NbBc6Gc2EU1rIx0MMwlAL/wYnTKc8GAxyS0QuUDgm
# DbcWaGylr1fY2/7Vh8ww8rylZUdSSaAa0TVjTN1unPusW7VoZPoX7v+zzgF4qUe/
# jp0JFdspMOMvWVJgDxRaJ1ouuJ3VqZcjd77OsM8IWtyZYGXkZUMZmxkZNgEwtcPu
# nPbQiWoW/b5DjX9hMZCSkvvDe31IeD5fbqgM1wir+O5oavVOn+gColmtDl1FQtTy
# Nidy5brPf3USztgyy5M8NC44MeO3Qw/rwNmCZ097APXhu9I803Va/gNMzAZjeodp
# pcJl75HDtCVP3ausMQet0wYGouxGM3ab4mesLD/gEloIwzlA6T2H07i0iP959ppp
# 7deAKfRIM1pIkLtnjGcrgv+08Khok7mC75wUzd9rJytc/mJsKJdSrqVJp4nLFq1N
# 6KGCFz0wghc5BgorBgEEAYI3AwMBMYIXKTCCFyUGCSqGSIb3DQEHAqCCFxYwghcS
# AgEDMQ8wDQYJYIZIAWUDBAIBBQAwdwYLKoZIhvcNAQkQAQSgaARmMGQCAQEGCWCG
# SAGG/WwHATAxMA0GCWCGSAFlAwQCAQUABCAr4E6TvBz8DcMjGSz/jEwSBmxbYaMY
# vRe2WAwrurQMnAIQJTqGmG+JAXdLO4BQauv/3hgPMjAyMjEwMjYyMTAzNDNaoIIT
# BzCCBsAwggSooAMCAQICEAxNaXJLlPo8Kko9KQeAPVowDQYJKoZIhvcNAQELBQAw
# YzELMAkGA1UEBhMCVVMxFzAVBgNVBAoTDkRpZ2lDZXJ0LCBJbmMuMTswOQYDVQQD
# EzJEaWdpQ2VydCBUcnVzdGVkIEc0IFJTQTQwOTYgU0hBMjU2IFRpbWVTdGFtcGlu
# ZyBDQTAeFw0yMjA5MjEwMDAwMDBaFw0zMzExMjEyMzU5NTlaMEYxCzAJBgNVBAYT
# AlVTMREwDwYDVQQKEwhEaWdpQ2VydDEkMCIGA1UEAxMbRGlnaUNlcnQgVGltZXN0
# YW1wIDIwMjIgLSAyMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAz+yl
# JjrGqfJru43BDZrboegUhXQzGias0BxVHh42bbySVQxh9J0Jdz0Vlggva2Sk/QaD
# FteRkjgcMQKW+3KxlzpVrzPsYYrppijbkGNcvYlT4DotjIdCriak5Lt4eLl6FuFW
# xsC6ZFO7KhbnUEi7iGkMiMbxvuAvfTuxylONQIMe58tySSgeTIAehVbnhe3yYbyq
# Ogd99qtu5Wbd4lz1L+2N1E2VhGjjgMtqedHSEJFGKes+JvK0jM1MuWbIu6pQOA3l
# jJRdGVq/9XtAbm8WqJqclUeGhXk+DF5mjBoKJL6cqtKctvdPbnjEKD+jHA9QBje6
# CNk1prUe2nhYHTno+EyREJZ+TeHdwq2lfvgtGx/sK0YYoxn2Off1wU9xLokDEaJL
# u5i/+k/kezbvBkTkVf826uV8MefzwlLE5hZ7Wn6lJXPbwGqZIS1j5Vn1TS+QHye3
# 0qsU5Thmh1EIa/tTQznQZPpWz+D0CuYUbWR4u5j9lMNzIfMvwi4g14Gs0/EH1OG9
# 2V1LbjGUKYvmQaRllMBY5eUuKZCmt2Fk+tkgbBhRYLqmgQ8JJVPxvzvpqwcOagc5
# YhnJ1oV/E9mNec9ixezhe7nMZxMHmsF47caIyLBuMnnHC1mDjcbu9Sx8e47LZInx
# scS451NeX1XSfRkpWQNO+l3qRXMchH7XzuLUOncCAwEAAaOCAYswggGHMA4GA1Ud
# DwEB/wQEAwIHgDAMBgNVHRMBAf8EAjAAMBYGA1UdJQEB/wQMMAoGCCsGAQUFBwMI
# MCAGA1UdIAQZMBcwCAYGZ4EMAQQCMAsGCWCGSAGG/WwHATAfBgNVHSMEGDAWgBS6
# FtltTYUvcyl2mi91jGogj57IbzAdBgNVHQ4EFgQUYore0GH8jzEU7ZcLzT0qlBTf
# UpwwWgYDVR0fBFMwUTBPoE2gS4ZJaHR0cDovL2NybDMuZGlnaWNlcnQuY29tL0Rp
# Z2lDZXJ0VHJ1c3RlZEc0UlNBNDA5NlNIQTI1NlRpbWVTdGFtcGluZ0NBLmNybDCB
# kAYIKwYBBQUHAQEEgYMwgYAwJAYIKwYBBQUHMAGGGGh0dHA6Ly9vY3NwLmRpZ2lj
# ZXJ0LmNvbTBYBggrBgEFBQcwAoZMaHR0cDovL2NhY2VydHMuZGlnaWNlcnQuY29t
# L0RpZ2lDZXJ0VHJ1c3RlZEc0UlNBNDA5NlNIQTI1NlRpbWVTdGFtcGluZ0NBLmNy
# dDANBgkqhkiG9w0BAQsFAAOCAgEAVaoqGvNG83hXNzD8deNP1oUj8fz5lTmbJeb3
# coqYw3fUZPwV+zbCSVEseIhjVQlGOQD8adTKmyn7oz/AyQCbEx2wmIncePLNfIXN
# U52vYuJhZqMUKkWHSphCK1D8G7WeCDAJ+uQt1wmJefkJ5ojOfRu4aqKbwVNgCeij
# uJ3XrR8cuOyYQfD2DoD75P/fnRCn6wC6X0qPGjpStOq/CUkVNTZZmg9U0rIbf35e
# Ca12VIp0bcrSBWcrduv/mLImlTgZiEQU5QpZomvnIj5EIdI/HMCb7XxIstiSDJFP
# PGaUr10CU+ue4p7k0x+GAWScAMLpWnR1DT3heYi/HAGXyRkjgNc2Wl+WFrFjDMZG
# QDvOXTXUWT5Dmhiuw8nLw/ubE19qtcfg8wXDWd8nYiveQclTuf80EGf2JjKYe/5c
# QpSBlIKdrAqLxksVStOYkEVgM4DgI974A6T2RUflzrgDQkfoQTZxd639ouiXdE4u
# 2h4djFrIHprVwvDGIqhPm73YHJpRxC+a9l+nJ5e6li6FV8Bg53hWf2rvwpWaSxEC
# yIKcyRoFfLpxtU56mWz06J7UWpjIn7+NuxhcQ/XQKujiYu54BNu90ftbCqhwfvCX
# hHjjCANdRyxjqCU4lwHSPzra5eX25pvcfizM/xdMTQCi2NYBDriL7ubgclWJLCcZ
# YfZ3AYwwggauMIIElqADAgECAhAHNje3JFR82Ees/ShmKl5bMA0GCSqGSIb3DQEB
# CwUAMGIxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNV
# BAsTEHd3dy5kaWdpY2VydC5jb20xITAfBgNVBAMTGERpZ2lDZXJ0IFRydXN0ZWQg
# Um9vdCBHNDAeFw0yMjAzMjMwMDAwMDBaFw0zNzAzMjIyMzU5NTlaMGMxCzAJBgNV
# BAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwgSW5jLjE7MDkGA1UEAxMyRGlnaUNl
# cnQgVHJ1c3RlZCBHNCBSU0E0MDk2IFNIQTI1NiBUaW1lU3RhbXBpbmcgQ0EwggIi
# MA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDGhjUGSbPBPXJJUVXHJQPE8pE3
# qZdRodbSg9GeTKJtoLDMg/la9hGhRBVCX6SI82j6ffOciQt/nR+eDzMfUBMLJnOW
# bfhXqAJ9/UO0hNoR8XOxs+4rgISKIhjf69o9xBd/qxkrPkLcZ47qUT3w1lbU5ygt
# 69OxtXXnHwZljZQp09nsad/ZkIdGAHvbREGJ3HxqV3rwN3mfXazL6IRktFLydkf3
# YYMZ3V+0VAshaG43IbtArF+y3kp9zvU5EmfvDqVjbOSmxR3NNg1c1eYbqMFkdECn
# wHLFuk4fsbVYTXn+149zk6wsOeKlSNbwsDETqVcplicu9Yemj052FVUmcJgmf6Aa
# RyBD40NjgHt1biclkJg6OBGz9vae5jtb7IHeIhTZgirHkr+g3uM+onP65x9abJTy
# UpURK1h0QCirc0PO30qhHGs4xSnzyqqWc0Jon7ZGs506o9UD4L/wojzKQtwYSH8U
# NM/STKvvmz3+DrhkKvp1KCRB7UK/BZxmSVJQ9FHzNklNiyDSLFc1eSuo80VgvCON
# WPfcYd6T/jnA+bIwpUzX6ZhKWD7TA4j+s4/TXkt2ElGTyYwMO1uKIqjBJgj5FBAS
# A31fI7tk42PgpuE+9sJ0sj8eCXbsq11GdeJgo1gJASgADoRU7s7pXcheMBK9Rp61
# 03a50g5rmQzSM7TNsQIDAQABo4IBXTCCAVkwEgYDVR0TAQH/BAgwBgEB/wIBADAd
# BgNVHQ4EFgQUuhbZbU2FL3MpdpovdYxqII+eyG8wHwYDVR0jBBgwFoAU7NfjgtJx
# XWRM3y5nP+e6mK4cD08wDgYDVR0PAQH/BAQDAgGGMBMGA1UdJQQMMAoGCCsGAQUF
# BwMIMHcGCCsGAQUFBwEBBGswaTAkBggrBgEFBQcwAYYYaHR0cDovL29jc3AuZGln
# aWNlcnQuY29tMEEGCCsGAQUFBzAChjVodHRwOi8vY2FjZXJ0cy5kaWdpY2VydC5j
# b20vRGlnaUNlcnRUcnVzdGVkUm9vdEc0LmNydDBDBgNVHR8EPDA6MDigNqA0hjJo
# dHRwOi8vY3JsMy5kaWdpY2VydC5jb20vRGlnaUNlcnRUcnVzdGVkUm9vdEc0LmNy
# bDAgBgNVHSAEGTAXMAgGBmeBDAEEAjALBglghkgBhv1sBwEwDQYJKoZIhvcNAQEL
# BQADggIBAH1ZjsCTtm+YqUQiAX5m1tghQuGwGC4QTRPPMFPOvxj7x1Bd4ksp+3CK
# Daopafxpwc8dB+k+YMjYC+VcW9dth/qEICU0MWfNthKWb8RQTGIdDAiCqBa9qVbP
# FXONASIlzpVpP0d3+3J0FNf/q0+KLHqrhc1DX+1gtqpPkWaeLJ7giqzl/Yy8ZCaH
# bJK9nXzQcAp876i8dU+6WvepELJd6f8oVInw1YpxdmXazPByoyP6wCeCRK6ZJxur
# JB4mwbfeKuv2nrF5mYGjVoarCkXJ38SNoOeY+/umnXKvxMfBwWpx2cYTgAnEtp/N
# h4cku0+jSbl3ZpHxcpzpSwJSpzd+k1OsOx0ISQ+UzTl63f8lY5knLD0/a6fxZsNB
# zU+2QJshIUDQtxMkzdwdeDrknq3lNHGS1yZr5Dhzq6YBT70/O3itTK37xJV77Qpf
# MzmHQXh6OOmc4d0j/R0o08f56PGYX/sr2H7yRp11LB4nLCbbbxV7HhmLNriT1Oby
# F5lZynDwN7+YAN8gFk8n+2BnFqFmut1VwDophrCYoCvtlUG3OtUVmDG0YgkPCr2B
# 2RP+v6TR81fZvAT6gt4y3wSJ8ADNXcL50CN/AAvkdgIm2fBldkKmKYcJRyvmfxqk
# hQ/8mJb2VVQrH4D6wPIOK+XW+6kvRBVK5xMOHds3OBqhK/bt1nz8MIIFjTCCBHWg
# AwIBAgIQDpsYjvnQLefv21DiCEAYWjANBgkqhkiG9w0BAQwFADBlMQswCQYDVQQG
# EwJVUzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMRkwFwYDVQQLExB3d3cuZGlnaWNl
# cnQuY29tMSQwIgYDVQQDExtEaWdpQ2VydCBBc3N1cmVkIElEIFJvb3QgQ0EwHhcN
# MjIwODAxMDAwMDAwWhcNMzExMTA5MjM1OTU5WjBiMQswCQYDVQQGEwJVUzEVMBMG
# A1UEChMMRGlnaUNlcnQgSW5jMRkwFwYDVQQLExB3d3cuZGlnaWNlcnQuY29tMSEw
# HwYDVQQDExhEaWdpQ2VydCBUcnVzdGVkIFJvb3QgRzQwggIiMA0GCSqGSIb3DQEB
# AQUAA4ICDwAwggIKAoICAQC/5pBzaN675F1KPDAiMGkz7MKnJS7JIT3yithZwuEp
# pz1Yq3aaza57G4QNxDAf8xukOBbrVsaXbR2rsnnyyhHS5F/WBTxSD1Ifxp4VpX6+
# n6lXFllVcq9ok3DCsrp1mWpzMpTREEQQLt+C8weE5nQ7bXHiLQwb7iDVySAdYykt
# zuxeTsiT+CFhmzTrBcZe7FsavOvJz82sNEBfsXpm7nfISKhmV1efVFiODCu3T6cw
# 2Vbuyntd463JT17lNecxy9qTXtyOj4DatpGYQJB5w3jHtrHEtWoYOAMQjdjUN6Qu
# BX2I9YI+EJFwq1WCQTLX2wRzKm6RAXwhTNS8rhsDdV14Ztk6MUSaM0C/CNdaSaTC
# 5qmgZ92kJ7yhTzm1EVgX9yRcRo9k98FpiHaYdj1ZXUJ2h4mXaXpI8OCiEhtmmnTK
# 3kse5w5jrubU75KSOp493ADkRSWJtppEGSt+wJS00mFt6zPZxd9LBADMfRyVw4/3
# IbKyEbe7f/LVjHAsQWCqsWMYRJUadmJ+9oCw++hkpjPRiQfhvbfmQ6QYuKZ3AeEP
# lAwhHbJUKSWJbOUOUlFHdL4mrLZBdd56rF+NP8m800ERElvlEFDrMcXKchYiCd98
# THU/Y+whX8QgUWtvsauGi0/C1kVfnSD8oR7FwI+isX4KJpn15GkvmB0t9dmpsh3l
# GwIDAQABo4IBOjCCATYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQU7NfjgtJx
# XWRM3y5nP+e6mK4cD08wHwYDVR0jBBgwFoAUReuir/SSy4IxLVGLp6chnfNtyA8w
# DgYDVR0PAQH/BAQDAgGGMHkGCCsGAQUFBwEBBG0wazAkBggrBgEFBQcwAYYYaHR0
# cDovL29jc3AuZGlnaWNlcnQuY29tMEMGCCsGAQUFBzAChjdodHRwOi8vY2FjZXJ0
# cy5kaWdpY2VydC5jb20vRGlnaUNlcnRBc3N1cmVkSURSb290Q0EuY3J0MEUGA1Ud
# HwQ+MDwwOqA4oDaGNGh0dHA6Ly9jcmwzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydEFz
# c3VyZWRJRFJvb3RDQS5jcmwwEQYDVR0gBAowCDAGBgRVHSAAMA0GCSqGSIb3DQEB
# DAUAA4IBAQBwoL9DXFXnOF+go3QbPbYW1/e/Vwe9mqyhhyzshV6pGrsi+IcaaVQi
# 7aSId229GhT0E0p6Ly23OO/0/4C5+KH38nLeJLxSA8hO0Cre+i1Wz/n096wwepqL
# sl7Uz9FDRJtDIeuWcqFItJnLnU+nBgMTdydE1Od/6Fmo8L8vC6bp8jQ87PcDx4eo
# 0kxAGTVGamlUsLihVo7spNU96LHc/RzY9HdaXFSMb++hUD38dglohJ9vytsgjTVg
# HAIDyyCwrFigDkBjxZgiwbJZ9VVrzyerbHbObyMt9H5xaiNrIv8SuFQtJ37YOtnw
# toeW/VvRXKwYw02fc7cBqZ9Xql4o4rmUMYIDdjCCA3ICAQEwdzBjMQswCQYDVQQG
# EwJVUzEXMBUGA1UEChMORGlnaUNlcnQsIEluYy4xOzA5BgNVBAMTMkRpZ2lDZXJ0
# IFRydXN0ZWQgRzQgUlNBNDA5NiBTSEEyNTYgVGltZVN0YW1waW5nIENBAhAMTWly
# S5T6PCpKPSkHgD1aMA0GCWCGSAFlAwQCAQUAoIHRMBoGCSqGSIb3DQEJAzENBgsq
# hkiG9w0BCRABBDAcBgkqhkiG9w0BCQUxDxcNMjIxMDI2MjEwMzQzWjArBgsqhkiG
# 9w0BCRACDDEcMBowGDAWBBTzhyJNhjOCkjWplLy9j5bp/hx8czAvBgkqhkiG9w0B
# CQQxIgQg0kdnKMgvN2XnGDd8g0oIYGvjdRR0ILMZXAkugIDmk+0wNwYLKoZIhvcN
# AQkQAi8xKDAmMCQwIgQgx/ThvjIoiSCr4iY6vhrE/E/meBwtZNBMgHVXoCO1tvow
# DQYJKoZIhvcNAQEBBQAEggIApYACIIb/x1CpUfxk2E/tja+Nyc6hd3+rPsKgkPd/
# cVX8PLSHGcSAGQjvDEDWzlI1CCknoXgzCIjHSAH3ksbdHZzLfh8zcy2txROXg6Vt
# S44d55nlnznmvshtmpMjn7074KtxTfEnXHn9KCSGCwVGKRaaYyzAcBuEPh9DH4u1
# 3oHztYyzyVvAjmZRtmTmwdJX/ATtVA+Bp6McTUfeO8xdEHF/EopMQ7BKMmUNLqAM
# 6HWaw2hAbE1gXcq96LjZ5M/FwYnvjI4aO6pnIyiVuQXM63QYb9uJVy3mrS3uacZZ
# sXzKfiY5BTklk1y9FizNj7qizj6nopK+XDwJCW+CTfBKtnn4h5BUbIGtsmvNBZvc
# cAgLuXl0dzzStIVMN/U0H9zDmdveW4cTt4u2CP8VA30ejsNRoKV6lLBxBLAB0819
# XjYCq8N61qo6dq2HsOqEh76O7iUb1fWPFBtr+NWKOZ3Dwu5IceJ/mFNdkPGzurv4
# 4jOLYQ6LwWzvHEHgThah2VliImU+rEmPjM3M7sWrtlPmzCVIXQNozNZvz0ME0RzU
# Raef2AwK780NFBK1BjQAWIYGlVsV1m1zbPpNjIzl8oQdmqM8QxBFT3kbKxiSHNHl
# 4t8bCEkZWau8QDIFz3VMF2O144N7tLl/+JbJod2rid9Syb8RexkBqkvpskexJiOR
# O/Q=
# SIG # End signature block
