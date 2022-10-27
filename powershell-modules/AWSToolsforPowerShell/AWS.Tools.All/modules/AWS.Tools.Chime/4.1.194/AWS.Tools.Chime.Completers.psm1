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

# Argument completions for service Amazon Chime


$CHM_Completers = {
    param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

    switch ($("$commandName/$parameterName"))
    {
        # Amazon.Chime.ArtifactsState
        {
            ($_ -eq "New-CHMMediaCapturePipeline/ChimeSdkMeetingConfiguration_ArtifactsConfiguration_Content_State") -Or
            ($_ -eq "New-CHMMediaCapturePipeline/ChimeSdkMeetingConfiguration_ArtifactsConfiguration_Video_State")
        }
        {
            $v = "Disabled","Enabled"
            break
        }

        # Amazon.Chime.AudioMuxType
        "New-CHMMediaCapturePipeline/ChimeSdkMeetingConfiguration_ArtifactsConfiguration_Audio_MuxType"
        {
            $v = "AudioOnly","AudioWithActiveSpeakerVideo"
            break
        }

        # Amazon.Chime.ChannelMembershipType
        {
            ($_ -eq "Get-CHMChannelMembershipList/Type") -Or
            ($_ -eq "New-CHMChannelMembership/Type") -Or
            ($_ -eq "New-CHMCreateChannelMembership/Type")
        }
        {
            $v = "DEFAULT","HIDDEN"
            break
        }

        # Amazon.Chime.ChannelMessagePersistenceType
        "Send-CHMChannelMessage/Persistence"
        {
            $v = "NON_PERSISTENT","PERSISTENT"
            break
        }

        # Amazon.Chime.ChannelMessageType
        "Send-CHMChannelMessage/Type"
        {
            $v = "CONTROL","STANDARD"
            break
        }

        # Amazon.Chime.ChannelMode
        {
            ($_ -eq "New-CHMChannel/Mode") -Or
            ($_ -eq "Update-CHMChannel/Mode")
        }
        {
            $v = "RESTRICTED","UNRESTRICTED"
            break
        }

        # Amazon.Chime.ChannelPrivacy
        {
            ($_ -eq "Get-CHMChannelList/Privacy") -Or
            ($_ -eq "New-CHMChannel/Privacy")
        }
        {
            $v = "PRIVATE","PUBLIC"
            break
        }

        # Amazon.Chime.ContentMuxType
        "New-CHMMediaCapturePipeline/ChimeSdkMeetingConfiguration_ArtifactsConfiguration_Content_MuxType"
        {
            $v = "ContentOnly"
            break
        }

        # Amazon.Chime.GeoMatchLevel
        "New-CHMProxySession/GeoMatchLevel"
        {
            $v = "AreaCode","Country"
            break
        }

        # Amazon.Chime.License
        {
            ($_ -eq "Update-CHMAccount/DefaultLicense") -Or
            ($_ -eq "Update-CHMUser/LicenseType")
        }
        {
            $v = "Basic","Plus","Pro","ProTrial"
            break
        }

        # Amazon.Chime.MediaPipelineSinkType
        "New-CHMMediaCapturePipeline/SinkType"
        {
            $v = "S3Bucket"
            break
        }

        # Amazon.Chime.MediaPipelineSourceType
        "New-CHMMediaCapturePipeline/SourceType"
        {
            $v = "ChimeSdkMeeting"
            break
        }

        # Amazon.Chime.NumberSelectionBehavior
        "New-CHMProxySession/NumberSelectionBehavior"
        {
            $v = "AvoidSticky","PreferSticky"
            break
        }

        # Amazon.Chime.PhoneNumberAssociationName
        "Get-CHMPhoneNumberList/FilterName"
        {
            $v = "AccountId","SipRuleId","UserId","VoiceConnectorGroupId","VoiceConnectorId"
            break
        }

        # Amazon.Chime.PhoneNumberProductType
        {
            ($_ -eq "Get-CHMPhoneNumberList/ProductType") -Or
            ($_ -eq "Get-CHMSupportedPhoneNumberCountryList/ProductType") -Or
            ($_ -eq "New-CHMPhoneNumberOrder/ProductType") -Or
            ($_ -eq "Update-CHMPhoneNumber/ProductType")
        }
        {
            $v = "BusinessCalling","SipMediaApplicationDialIn","VoiceConnector"
            break
        }

        # Amazon.Chime.PhoneNumberStatus
        "Get-CHMPhoneNumberList/Status"
        {
            $v = "AcquireFailed","AcquireInProgress","Assigned","DeleteFailed","DeleteInProgress","ReleaseFailed","ReleaseInProgress","Unassigned"
            break
        }

        # Amazon.Chime.PhoneNumberType
        "Search-CHMAvailablePhoneNumber/PhoneNumberType"
        {
            $v = "Local","TollFree"
            break
        }

        # Amazon.Chime.ProxySessionStatus
        "Get-CHMProxySessionList/Status"
        {
            $v = "Closed","InProgress","Open"
            break
        }

        # Amazon.Chime.RoomMembershipRole
        {
            ($_ -eq "New-CHMRoomMembership/Role") -Or
            ($_ -eq "Update-CHMRoomMembership/Role")
        }
        {
            $v = "Administrator","Member"
            break
        }

        # Amazon.Chime.SipRuleTriggerType
        "New-CHMSipRule/TriggerType"
        {
            $v = "RequestUriHostname","ToPhoneNumber"
            break
        }

        # Amazon.Chime.SortOrder
        "Get-CHMChannelMessageList/SortOrder"
        {
            $v = "ASCENDING","DESCENDING"
            break
        }

        # Amazon.Chime.TranscribeContentIdentificationType
        "Start-CHMMeetingTranscription/TranscriptionConfiguration_EngineTranscribeSettings_ContentIdentificationType"
        {
            $v = "PII"
            break
        }

        # Amazon.Chime.TranscribeContentRedactionType
        "Start-CHMMeetingTranscription/TranscriptionConfiguration_EngineTranscribeSettings_ContentRedactionType"
        {
            $v = "PII"
            break
        }

        # Amazon.Chime.TranscribeLanguageCode
        "Start-CHMMeetingTranscription/TranscriptionConfiguration_EngineTranscribeSettings_LanguageCode"
        {
            $v = "de-DE","en-AU","en-GB","en-US","es-US","fr-CA","fr-FR","it-IT","ja-JP","ko-KR","pt-BR","zh-CN"
            break
        }

        # Amazon.Chime.TranscribeMedicalContentIdentificationType
        "Start-CHMMeetingTranscription/TranscriptionConfiguration_EngineTranscribeMedicalSettings_ContentIdentificationType"
        {
            $v = "PHI"
            break
        }

        # Amazon.Chime.TranscribeMedicalLanguageCode
        "Start-CHMMeetingTranscription/TranscriptionConfiguration_EngineTranscribeMedicalSettings_LanguageCode"
        {
            $v = "en-US"
            break
        }

        # Amazon.Chime.TranscribeMedicalRegion
        "Start-CHMMeetingTranscription/TranscriptionConfiguration_EngineTranscribeMedicalSettings_Region"
        {
            $v = "ap-southeast-2","auto","ca-central-1","eu-west-1","us-east-1","us-east-2","us-west-2"
            break
        }

        # Amazon.Chime.TranscribeMedicalSpecialty
        "Start-CHMMeetingTranscription/TranscriptionConfiguration_EngineTranscribeMedicalSettings_Specialty"
        {
            $v = "CARDIOLOGY","NEUROLOGY","ONCOLOGY","PRIMARYCARE","RADIOLOGY","UROLOGY"
            break
        }

        # Amazon.Chime.TranscribeMedicalType
        "Start-CHMMeetingTranscription/TranscriptionConfiguration_EngineTranscribeMedicalSettings_Type"
        {
            $v = "CONVERSATION","DICTATION"
            break
        }

        # Amazon.Chime.TranscribePartialResultsStability
        "Start-CHMMeetingTranscription/TranscriptionConfiguration_EngineTranscribeSettings_PartialResultsStability"
        {
            $v = "high","low","medium"
            break
        }

        # Amazon.Chime.TranscribeRegion
        "Start-CHMMeetingTranscription/TranscriptionConfiguration_EngineTranscribeSettings_Region"
        {
            $v = "ap-northeast-1","ap-northeast-2","ap-southeast-2","auto","ca-central-1","eu-central-1","eu-west-1","eu-west-2","sa-east-1","us-east-1","us-east-2","us-west-2"
            break
        }

        # Amazon.Chime.TranscribeVocabularyFilterMethod
        "Start-CHMMeetingTranscription/TranscriptionConfiguration_EngineTranscribeSettings_VocabularyFilterMethod"
        {
            $v = "mask","remove","tag"
            break
        }

        # Amazon.Chime.UserType
        {
            ($_ -eq "Get-CHMUserList/UserType") -Or
            ($_ -eq "New-CHMUser/UserType") -Or
            ($_ -eq "Send-CHMUserInvitation/UserType") -Or
            ($_ -eq "Update-CHMUser/UserType")
        }
        {
            $v = "PrivateUser","SharedDevice"
            break
        }

        # Amazon.Chime.VideoMuxType
        "New-CHMMediaCapturePipeline/ChimeSdkMeetingConfiguration_ArtifactsConfiguration_Video_MuxType"
        {
            $v = "VideoOnly"
            break
        }

        # Amazon.Chime.VoiceConnectorAwsRegion
        "New-CHMVoiceConnector/AwsRegion"
        {
            $v = "us-east-1","us-west-2"
            break
        }


    }

    $v |
        Where-Object { $_ -like "$wordToComplete*" } |
        ForEach-Object { New-Object System.Management.Automation.CompletionResult $_, $_, 'ParameterValue', $_ }
}

$CHM_map = @{
    "AwsRegion"=@("New-CHMVoiceConnector")
    "ChimeSdkMeetingConfiguration_ArtifactsConfiguration_Audio_MuxType"=@("New-CHMMediaCapturePipeline")
    "ChimeSdkMeetingConfiguration_ArtifactsConfiguration_Content_MuxType"=@("New-CHMMediaCapturePipeline")
    "ChimeSdkMeetingConfiguration_ArtifactsConfiguration_Content_State"=@("New-CHMMediaCapturePipeline")
    "ChimeSdkMeetingConfiguration_ArtifactsConfiguration_Video_MuxType"=@("New-CHMMediaCapturePipeline")
    "ChimeSdkMeetingConfiguration_ArtifactsConfiguration_Video_State"=@("New-CHMMediaCapturePipeline")
    "DefaultLicense"=@("Update-CHMAccount")
    "FilterName"=@("Get-CHMPhoneNumberList")
    "GeoMatchLevel"=@("New-CHMProxySession")
    "LicenseType"=@("Update-CHMUser")
    "Mode"=@("New-CHMChannel","Update-CHMChannel")
    "NumberSelectionBehavior"=@("New-CHMProxySession")
    "Persistence"=@("Send-CHMChannelMessage")
    "PhoneNumberType"=@("Search-CHMAvailablePhoneNumber")
    "Privacy"=@("Get-CHMChannelList","New-CHMChannel")
    "ProductType"=@("Get-CHMPhoneNumberList","Get-CHMSupportedPhoneNumberCountryList","New-CHMPhoneNumberOrder","Update-CHMPhoneNumber")
    "Role"=@("New-CHMRoomMembership","Update-CHMRoomMembership")
    "SinkType"=@("New-CHMMediaCapturePipeline")
    "SortOrder"=@("Get-CHMChannelMessageList")
    "SourceType"=@("New-CHMMediaCapturePipeline")
    "Status"=@("Get-CHMPhoneNumberList","Get-CHMProxySessionList")
    "TranscriptionConfiguration_EngineTranscribeMedicalSettings_ContentIdentificationType"=@("Start-CHMMeetingTranscription")
    "TranscriptionConfiguration_EngineTranscribeMedicalSettings_LanguageCode"=@("Start-CHMMeetingTranscription")
    "TranscriptionConfiguration_EngineTranscribeMedicalSettings_Region"=@("Start-CHMMeetingTranscription")
    "TranscriptionConfiguration_EngineTranscribeMedicalSettings_Specialty"=@("Start-CHMMeetingTranscription")
    "TranscriptionConfiguration_EngineTranscribeMedicalSettings_Type"=@("Start-CHMMeetingTranscription")
    "TranscriptionConfiguration_EngineTranscribeSettings_ContentIdentificationType"=@("Start-CHMMeetingTranscription")
    "TranscriptionConfiguration_EngineTranscribeSettings_ContentRedactionType"=@("Start-CHMMeetingTranscription")
    "TranscriptionConfiguration_EngineTranscribeSettings_LanguageCode"=@("Start-CHMMeetingTranscription")
    "TranscriptionConfiguration_EngineTranscribeSettings_PartialResultsStability"=@("Start-CHMMeetingTranscription")
    "TranscriptionConfiguration_EngineTranscribeSettings_Region"=@("Start-CHMMeetingTranscription")
    "TranscriptionConfiguration_EngineTranscribeSettings_VocabularyFilterMethod"=@("Start-CHMMeetingTranscription")
    "TriggerType"=@("New-CHMSipRule")
    "Type"=@("Get-CHMChannelMembershipList","New-CHMChannelMembership","New-CHMCreateChannelMembership","Send-CHMChannelMessage")
    "UserType"=@("Get-CHMUserList","New-CHMUser","Send-CHMUserInvitation","Update-CHMUser")
}

_awsArgumentCompleterRegistration $CHM_Completers $CHM_map

$CHM_SelectCompleters = {
    param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

    $cmdletType = Invoke-Expression "[Amazon.PowerShell.Cmdlets.CHM.$($commandName.Replace('-', ''))Cmdlet]"
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

$CHM_SelectMap = @{
    "Select"=@("Add-CHMPhoneNumbersToVoiceConnector",
               "Add-CHMPhoneNumbersToVoiceConnectorGroup",
               "Add-CHMPhoneNumberToUser",
               "Add-CHMSigninDelegateGroupsToAccount",
               "New-CHMAttendeeBatch",
               "New-CHMCreateChannelMembership",
               "New-CHMRoomMembershipBatch",
               "Remove-CHMPhoneNumberBatch",
               "Enable-CHMUserSuspensionBatch",
               "Disable-CHMUserSuspensionBatch",
               "Update-CHMPhoneNumberBatch",
               "Update-CHMUserBatch",
               "New-CHMAccount",
               "New-CHMAppInstance",
               "New-CHMAppInstanceAdmin",
               "New-CHMAppInstanceUser",
               "New-CHMAttendee",
               "New-CHMBot",
               "New-CHMChannel",
               "New-CHMChannelBan",
               "New-CHMChannelMembership",
               "New-CHMChannelModerator",
               "New-CHMMediaCapturePipeline",
               "New-CHMMeeting",
               "New-CHMMeetingDialOut",
               "New-CHMMeetingWithAttendee",
               "New-CHMPhoneNumberOrder",
               "New-CHMProxySession",
               "New-CHMRoom",
               "New-CHMRoomMembership",
               "New-CHMSipMediaApplication",
               "New-CHMSipMediaApplicationCall",
               "New-CHMSipRule",
               "New-CHMUser",
               "New-CHMVoiceConnector",
               "New-CHMVoiceConnectorGroup",
               "Remove-CHMAccount",
               "Remove-CHMAppInstance",
               "Remove-CHMAppInstanceAdmin",
               "Remove-CHMAppInstanceStreamingConfiguration",
               "Remove-CHMAppInstanceUser",
               "Remove-CHMAttendee",
               "Remove-CHMChannel",
               "Remove-CHMChannelBan",
               "Remove-CHMChannelMembership",
               "Remove-CHMChannelMessage",
               "Remove-CHMChannelModerator",
               "Remove-CHMEventsConfiguration",
               "Remove-CHMMediaCapturePipeline",
               "Remove-CHMMeeting",
               "Remove-CHMPhoneNumber",
               "Remove-CHMProxySession",
               "Remove-CHMRoom",
               "Remove-CHMRoomMembership",
               "Remove-CHMSipMediaApplication",
               "Remove-CHMSipRule",
               "Remove-CHMVoiceConnector",
               "Remove-CHMVoiceConnectorEmergencyCallingConfiguration",
               "Remove-CHMVoiceConnectorGroup",
               "Remove-CHMVoiceConnectorOrigination",
               "Remove-CHMVoiceConnectorProxy",
               "Remove-CHMVoiceConnectorStreamingConfiguration",
               "Remove-CHMVoiceConnectorTermination",
               "Remove-CHMVoiceConnectorTerminationCredential",
               "Get-CHMAppInstance",
               "Get-CHMAppInstanceAdmin",
               "Get-CHMAppInstanceUser",
               "Get-CHMChannel",
               "Get-CHMChannelBan",
               "Get-CHMChannelMembership",
               "Get-CHMChannelMembershipForAppInstanceUser",
               "Get-CHMChannelModeratedByAppInstanceUser",
               "Get-CHMChannelModerator",
               "Remove-CHMPhoneNumberFromUser",
               "Remove-CHMPhoneNumbersFromVoiceConnector",
               "Remove-CHMPhoneNumbersFromVoiceConnectorGroup",
               "Remove-CHMSigninDelegateGroupsFromAccount",
               "Get-CHMAccount",
               "Get-CHMAccountSetting",
               "Get-CHMAppInstanceRetentionSetting",
               "Get-CHMAppInstanceStreamingConfiguration",
               "Get-CHMAttendee",
               "Get-CHMBot",
               "Get-CHMChannelMessage",
               "Get-CHMEventsConfiguration",
               "Get-CHMGlobalSetting",
               "Get-CHMMediaCapturePipeline",
               "Get-CHMMeeting",
               "Get-CHMMessagingSessionEndpoint",
               "Get-CHMPhoneNumber",
               "Get-CHMPhoneNumberOrder",
               "Get-CHMPhoneNumberSetting",
               "Get-CHMProxySession",
               "Get-CHMRetentionSetting",
               "Get-CHMRoom",
               "Get-CHMSipMediaApplication",
               "Get-CHMSipMediaApplicationLoggingConfiguration",
               "Get-CHMSipRule",
               "Get-CHMUser",
               "Get-CHMUserSetting",
               "Get-CHMVoiceConnector",
               "Get-CHMVoiceConnectorEmergencyCallingConfiguration",
               "Get-CHMVoiceConnectorGroup",
               "Get-CHMVoiceConnectorLoggingConfiguration",
               "Get-CHMVoiceConnectorOrigination",
               "Get-CHMVoiceConnectorProxy",
               "Get-CHMVoiceConnectorStreamingConfiguration",
               "Get-CHMVoiceConnectorTermination",
               "Get-CHMVoiceConnectorTerminationHealth",
               "Send-CHMUserInvitation",
               "Get-CHMAccountList",
               "Get-CHMAppInstanceAdminList",
               "Get-CHMAppInstanceList",
               "Get-CHMAppInstanceUserList",
               "Get-CHMAttendeeList",
               "Get-CHMAttendeeTagList",
               "Get-CHMBotList",
               "Get-CHMChannelBanList",
               "Get-CHMChannelMembershipList",
               "Get-CHMChannelMembershipsForAppInstanceUserList",
               "Get-CHMChannelMessageList",
               "Get-CHMChannelModeratorList",
               "Get-CHMChannelList",
               "Get-CHMChannelsModeratedByAppInstanceUserList",
               "Get-CHMMediaCapturePipelineList",
               "Get-CHMMeetingList",
               "Get-CHMMeetingTagList",
               "Get-CHMPhoneNumberOrderList",
               "Get-CHMPhoneNumberList",
               "Get-CHMProxySessionList",
               "Get-CHMRoomMembershipList",
               "Get-CHMRoomList",
               "Get-CHMSipMediaApplicationList",
               "Get-CHMSipRuleList",
               "Get-CHMSupportedPhoneNumberCountryList",
               "Get-CHMResourceTag",
               "Get-CHMUserList",
               "Get-CHMVoiceConnectorGroupList",
               "Get-CHMVoiceConnectorList",
               "Get-CHMVoiceConnectorTerminationCredentialList",
               "Invoke-CHMUserLogout",
               "Write-CHMAppInstanceRetentionSetting",
               "Write-CHMAppInstanceStreamingConfiguration",
               "Write-CHMEventsConfiguration",
               "Write-CHMRetentionSetting",
               "Write-CHMSipMediaApplicationLoggingConfiguration",
               "Write-CHMVoiceConnectorEmergencyCallingConfiguration",
               "Write-CHMVoiceConnectorLoggingConfiguration",
               "Write-CHMVoiceConnectorOrigination",
               "Write-CHMVoiceConnectorProxy",
               "Write-CHMVoiceConnectorStreamingConfiguration",
               "Write-CHMVoiceConnectorTermination",
               "Write-CHMVoiceConnectorTerminationCredential",
               "Hide-CHMChannelMessage",
               "Hide-CHMConversationMessage",
               "Hide-CHMRoomMessage",
               "Update-CHMSecurityToken",
               "Reset-CHMPersonalPIN",
               "Restore-CHMPhoneNumber",
               "Search-CHMAvailablePhoneNumber",
               "Send-CHMChannelMessage",
               "Start-CHMMeetingTranscription",
               "Stop-CHMMeetingTranscription",
               "Add-CHMAttendee",
               "Add-CHMMeeting",
               "Add-CHMResourceTag",
               "Remove-CHMAttendeeTag",
               "Remove-CHMMeetingTag",
               "Remove-CHMResourceTag",
               "Update-CHMAccount",
               "Update-CHMAccountSetting",
               "Update-CHMAppInstance",
               "Update-CHMAppInstanceUser",
               "Update-CHMBot",
               "Update-CHMChannel",
               "Update-CHMChannelMessage",
               "Update-CHMChannelReadMarker",
               "Update-CHMGlobalSetting",
               "Update-CHMPhoneNumber",
               "Update-CHMPhoneNumberSetting",
               "Update-CHMProxySession",
               "Update-CHMRoom",
               "Update-CHMRoomMembership",
               "Update-CHMSipMediaApplication",
               "Update-CHMSipMediaApplicationCall",
               "Update-CHMSipRule",
               "Update-CHMUser",
               "Update-CHMUserSetting",
               "Update-CHMVoiceConnector",
               "Update-CHMVoiceConnectorGroup",
               "Confirm-CHME911Address")
}

_awsArgumentCompleterRegistration $CHM_SelectCompleters $CHM_SelectMap


# SIG # Begin signature block
# MIIurwYJKoZIhvcNAQcCoIIuoDCCLpwCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCAM15VVkFfbxGU+
# Vi4NZwxsR38FSODStJZs+6T82xNaqqCCFB0wggXAMIIEqKADAgECAhAP0bvKeWvX
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
# HAYKKwYBBAGCNwIBCzEOMAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIBI2
# uU2LcNYjAq/6a/oDbywy2ldL7cJFCh0gJfOaJzvGMA0GCSqGSIb3DQEBAQUABIIB
# gHFvVtASXeG695JoSE842pzmBVSDRTA0OgsqnYRB9SZT0ELVmtzPYqEnIJRWd0LP
# JHyc9VfzBTyiP3SSB9r6AFKbIapx3jCJ0/9Pgbvw1UV/AUqJ1hfEm3lotfYxAMfR
# sdnFd5z7dr1yjliXqJb/OzuNygOGjbCYSLv3PD5mEY7RNAVQDjCMPlZA8eQ1y73+
# NkR/W/n68ShA3DkRa/IDHmyoxjEamN031NEyXpSA1jgG3zGxVLSpUVFeY8NxyLNm
# RllSS/x8ddOYl+wLFlLnbMmnhVd2HQEMMJz/NCLgSTS9UybUFrMISfIyvTB/46CI
# taVgJS/PqphnpUa5hcbIR6WXbPu+9Lh4mBbJhEubZ9TC8ETNDf89FWyPl5louIWZ
# NJIE6znDbnJjH0+jwRCCxwSHfC2tI1S5Alfc+1Sd9OrzZLpxhCuCjbOktMlGgZEB
# M+WctaZ8r7EkQNOaX/cHyDXZjFglEELjFEU1mVWjDqWzSz3e/39aD4HwjboR2mub
# e6GCFz4wghc6BgorBgEEAYI3AwMBMYIXKjCCFyYGCSqGSIb3DQEHAqCCFxcwghcT
# AgEDMQ8wDQYJYIZIAWUDBAIBBQAweAYLKoZIhvcNAQkQAQSgaQRnMGUCAQEGCWCG
# SAGG/WwHATAxMA0GCWCGSAFlAwQCAQUABCC+fssK+wOsUks4iHpSqiJZvJLZx2Ws
# j2q56+ZYtG3LjQIRAP9h1z/bG+7wFG76YmzCR6oYDzIwMjIxMDI2MjEwMzMyWqCC
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
# KoZIhvcNAQkQAQQwHAYJKoZIhvcNAQkFMQ8XDTIyMTAyNjIxMDMzMlowKwYLKoZI
# hvcNAQkQAgwxHDAaMBgwFgQU84ciTYYzgpI1qZS8vY+W6f4cfHMwLwYJKoZIhvcN
# AQkEMSIEIAMm9JJDOizq3mcZlwqrybXv9QjLI3oXRmDRFuks63xnMDcGCyqGSIb3
# DQEJEAIvMSgwJjAkMCIEIMf04b4yKIkgq+ImOr4axPxP5ngcLWTQTIB1V6Ajtbb6
# MA0GCSqGSIb3DQEBAQUABIICAMS1y0K4SjY73X26Cuuw/A/taO1VKstqWuJt22qW
# upO/czVWe+Ex8bcRG5g++6bqmqqo7ohPTMZq22YJEvENNtxOvTa8X8HsBnZQaS2T
# 73XzFsXjVd+eL1Dffa3SjrCFprZ4b2PcM8ZB3XM+9NcU/zkpqfjKBYD1Mh1Gz2yz
# psXxztYJi6fjOkajHCCjLT4GtOjl/HlHzPXmeiiT3XhhSYaAKfphEbpDt7CDiyVA
# Z+3ngwoiTWStaJY9DW3o0bg3PkmliFZU5/MWR6+PLgriVxme3eIHQI9bYGtPJSGf
# fX22owhuh7rCugo0RL8RNEOoNWDD4wJVcozdbP5JU36OLcaS6wHDxCtA6uM2eRlc
# fO1RA+qLs+JkJjVLIbS//keDDJ9tVfNR1qvhWvD/K2CyiyeuxHQRIYqPdDL7z/By
# yDp5nz8RV7c6cCKiPtAg+k/1WzhZSdCdVi6X03gEfz72hxFZ3g1lMa7I1eCo9Auq
# HsEKUZrwCLDSE6eBJsZLTLBpu7sJZQJCDaD5kd+FqrZ/7gIG0/SgNdRIlHVQ0KK6
# 2bpaisyXO3dtfHwXWHVl6np6jdSf4QWZLZuB4ap6k1+Xp8n1LSOQdLwt5PO3YV5H
# caLk+052v8IRs6ZVIDzV7wvOnC2EMttuDl23uQKzwr2dAG8K/pC+yH1TnQKsz7EI
# pXnT
# SIG # End signature block
