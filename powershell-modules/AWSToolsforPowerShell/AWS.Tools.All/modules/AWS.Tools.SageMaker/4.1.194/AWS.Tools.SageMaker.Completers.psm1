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

# Argument completions for service Amazon SageMaker Service


$SM_Completers = {
    param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

    switch ($("$commandName/$parameterName"))
    {
        # Amazon.SageMaker.ActionStatus
        {
            ($_ -eq "New-SMAction/Status") -Or
            ($_ -eq "Update-SMAction/Status")
        }
        {
            $v = "Completed","Failed","InProgress","Stopped","Stopping","Unknown"
            break
        }

        # Amazon.SageMaker.AlgorithmSortBy
        "Get-SMAlgorithmList/SortBy"
        {
            $v = "CreationTime","Name"
            break
        }

        # Amazon.SageMaker.AppImageConfigSortKey
        "Get-SMAppImageConfigList/SortBy"
        {
            $v = "CreationTime","LastModifiedTime","Name"
            break
        }

        # Amazon.SageMaker.AppInstanceType
        {
            ($_ -eq "New-SMDomain/DomainSettings_RStudioServerProDomainSettings_DefaultResourceSpec_InstanceType") -Or
            ($_ -eq "Update-SMDomain/DomainSettingsForUpdate_RStudioServerProDomainSettingsForUpdate_DefaultResourceSpec_InstanceType") -Or
            ($_ -eq "New-SMApp/ResourceSpec_InstanceType")
        }
        {
            $v = "ml.c5.12xlarge","ml.c5.18xlarge","ml.c5.24xlarge","ml.c5.2xlarge","ml.c5.4xlarge","ml.c5.9xlarge","ml.c5.large","ml.c5.xlarge","ml.g4dn.12xlarge","ml.g4dn.16xlarge","ml.g4dn.2xlarge","ml.g4dn.4xlarge","ml.g4dn.8xlarge","ml.g4dn.xlarge","ml.g5.12xlarge","ml.g5.16xlarge","ml.g5.24xlarge","ml.g5.2xlarge","ml.g5.48xlarge","ml.g5.4xlarge","ml.g5.8xlarge","ml.g5.xlarge","ml.m5.12xlarge","ml.m5.16xlarge","ml.m5.24xlarge","ml.m5.2xlarge","ml.m5.4xlarge","ml.m5.8xlarge","ml.m5.large","ml.m5.xlarge","ml.m5d.12xlarge","ml.m5d.16xlarge","ml.m5d.24xlarge","ml.m5d.2xlarge","ml.m5d.4xlarge","ml.m5d.8xlarge","ml.m5d.large","ml.m5d.xlarge","ml.p3.16xlarge","ml.p3.2xlarge","ml.p3.8xlarge","ml.p3dn.24xlarge","ml.r5.12xlarge","ml.r5.16xlarge","ml.r5.24xlarge","ml.r5.2xlarge","ml.r5.4xlarge","ml.r5.8xlarge","ml.r5.large","ml.r5.xlarge","ml.t3.2xlarge","ml.t3.large","ml.t3.medium","ml.t3.micro","ml.t3.small","ml.t3.xlarge","system"
            break
        }

        # Amazon.SageMaker.AppNetworkAccessType
        "New-SMDomain/AppNetworkAccessType"
        {
            $v = "PublicInternetOnly","VpcOnly"
            break
        }

        # Amazon.SageMaker.AppSecurityGroupManagement
        "New-SMDomain/AppSecurityGroupManagement"
        {
            $v = "Customer","Service"
            break
        }

        # Amazon.SageMaker.AppSortKey
        "Get-SMAppList/SortBy"
        {
            $v = "CreationTime"
            break
        }

        # Amazon.SageMaker.AppType
        {
            ($_ -eq "Get-SMApp/AppType") -Or
            ($_ -eq "New-SMApp/AppType") -Or
            ($_ -eq "Remove-SMApp/AppType")
        }
        {
            $v = "JupyterServer","KernelGateway","RSessionGateway","RStudioServerPro","TensorBoard"
            break
        }

        # Amazon.SageMaker.AssemblyType
        "New-SMTransformJob/TransformOutput_AssembleWith"
        {
            $v = "Line","None"
            break
        }

        # Amazon.SageMaker.AssociationEdgeType
        {
            ($_ -eq "Add-SMAssociation/AssociationType") -Or
            ($_ -eq "Get-SMAssociationList/AssociationType")
        }
        {
            $v = "AssociatedWith","ContributedTo","DerivedFrom","Produced"
            break
        }

        # Amazon.SageMaker.AuthMode
        "New-SMDomain/AuthMode"
        {
            $v = "IAM","SSO"
            break
        }

        # Amazon.SageMaker.AutoMLJobStatus
        "Get-SMAutoMLJobList/StatusEquals"
        {
            $v = "Completed","Failed","InProgress","Stopped","Stopping"
            break
        }

        # Amazon.SageMaker.AutoMLMetricEnum
        "New-SMAutoMLJob/AutoMLJobObjective_MetricName"
        {
            $v = "Accuracy","AUC","F1","F1macro","MSE"
            break
        }

        # Amazon.SageMaker.AutoMLMode
        "New-SMAutoMLJob/AutoMLJobConfig_Mode"
        {
            $v = "AUTO","ENSEMBLING","HYPERPARAMETER_TUNING"
            break
        }

        # Amazon.SageMaker.AutoMLSortBy
        "Get-SMAutoMLJobList/SortBy"
        {
            $v = "CreationTime","Name","Status"
            break
        }

        # Amazon.SageMaker.AutoMLSortOrder
        {
            ($_ -eq "Get-SMAutoMLJobList/SortOrder") -Or
            ($_ -eq "Get-SMCandidatesForAutoMLJobList/SortOrder")
        }
        {
            $v = "Ascending","Descending"
            break
        }

        # Amazon.SageMaker.AwsManagedHumanLoopRequestSource
        "New-SMFlowDefinition/HumanLoopRequestSource_AwsManagedHumanLoopRequestSource"
        {
            $v = "AWS/Rekognition/DetectModerationLabels/Image/V3","AWS/Textract/AnalyzeDocument/Forms/V1"
            break
        }

        # Amazon.SageMaker.BatchStrategy
        "New-SMTransformJob/BatchStrategy"
        {
            $v = "MultiRecord","SingleRecord"
            break
        }

        # Amazon.SageMaker.BooleanOperator
        "Search-SMResource/SearchExpression_Operator"
        {
            $v = "And","Or"
            break
        }

        # Amazon.SageMaker.CandidateSortBy
        "Get-SMCandidatesForAutoMLJobList/SortBy"
        {
            $v = "CreationTime","FinalObjectiveMetricValue","Status"
            break
        }

        # Amazon.SageMaker.CandidateStatus
        "Get-SMCandidatesForAutoMLJobList/StatusEquals"
        {
            $v = "Completed","Failed","InProgress","Stopped","Stopping"
            break
        }

        # Amazon.SageMaker.CapacitySizeType
        {
            ($_ -eq "New-SMEndpoint/DeploymentConfig_BlueGreenUpdatePolicy_TrafficRoutingConfiguration_CanarySize_Type") -Or
            ($_ -eq "Update-SMEndpoint/DeploymentConfig_BlueGreenUpdatePolicy_TrafficRoutingConfiguration_CanarySize_Type") -Or
            ($_ -eq "New-SMEndpoint/DeploymentConfig_BlueGreenUpdatePolicy_TrafficRoutingConfiguration_LinearStepSize_Type") -Or
            ($_ -eq "Update-SMEndpoint/DeploymentConfig_BlueGreenUpdatePolicy_TrafficRoutingConfiguration_LinearStepSize_Type")
        }
        {
            $v = "CAPACITY_PERCENT","INSTANCE_COUNT"
            break
        }

        # Amazon.SageMaker.ClarifyTextGranularity
        "New-SMEndpointConfig/ExplainerConfig_ClarifyExplainerConfig_ShapConfig_TextConfig_Granularity"
        {
            $v = "paragraph","sentence","token"
            break
        }

        # Amazon.SageMaker.ClarifyTextLanguage
        "New-SMEndpointConfig/ExplainerConfig_ClarifyExplainerConfig_ShapConfig_TextConfig_Language"
        {
            $v = "af","ar","bg","bn","ca","cs","da","de","el","en","es","et","eu","fa","fi","fr","ga","gu","he","hi","hr","hu","hy","id","is","it","kn","ky","lb","lij","lt","lv","mk","ml","mr","nb","ne","nl","pl","pt","ro","ru","sa","si","sk","sl","sq","sr","sv","ta","te","tl","tn","tr","tt","uk","ur","xx","yo","zh"
            break
        }

        # Amazon.SageMaker.CodeRepositorySortBy
        "Get-SMCodeRepositoryList/SortBy"
        {
            $v = "CreationTime","LastModifiedTime","Name"
            break
        }

        # Amazon.SageMaker.CodeRepositorySortOrder
        "Get-SMCodeRepositoryList/SortOrder"
        {
            $v = "Ascending","Descending"
            break
        }

        # Amazon.SageMaker.CompilationJobStatus
        "Get-SMCompilationJobList/StatusEquals"
        {
            $v = "COMPLETED","FAILED","INPROGRESS","STARTING","STOPPED","STOPPING"
            break
        }

        # Amazon.SageMaker.CompressionType
        "New-SMTransformJob/TransformInput_CompressionType"
        {
            $v = "Gzip","None"
            break
        }

        # Amazon.SageMaker.DirectInternetAccess
        "New-SMNotebookInstance/DirectInternetAccess"
        {
            $v = "Disabled","Enabled"
            break
        }

        # Amazon.SageMaker.Direction
        "Find-SMLineage/Direction"
        {
            $v = "Ascendants","Both","Descendants"
            break
        }

        # Amazon.SageMaker.EdgePackagingJobStatus
        "Get-SMEdgePackagingJobList/StatusEquals"
        {
            $v = "COMPLETED","FAILED","INPROGRESS","STARTING","STOPPED","STOPPING"
            break
        }

        # Amazon.SageMaker.EdgePresetDeploymentType
        {
            ($_ -eq "New-SMDeviceFleet/OutputConfig_PresetDeploymentType") -Or
            ($_ -eq "New-SMEdgePackagingJob/OutputConfig_PresetDeploymentType") -Or
            ($_ -eq "Update-SMDeviceFleet/OutputConfig_PresetDeploymentType")
        }
        {
            $v = "GreengrassV2Component"
            break
        }

        # Amazon.SageMaker.EndpointConfigSortKey
        "Get-SMConfigList/SortBy"
        {
            $v = "CreationTime","Name"
            break
        }

        # Amazon.SageMaker.EndpointSortKey
        "Get-SMEndpointList/SortBy"
        {
            $v = "CreationTime","Name","Status"
            break
        }

        # Amazon.SageMaker.EndpointStatus
        "Get-SMEndpointList/StatusEquals"
        {
            $v = "Creating","Deleting","Failed","InService","OutOfService","RollingBack","SystemUpdating","Updating"
            break
        }

        # Amazon.SageMaker.ExecutionRoleIdentityConfig
        {
            ($_ -eq "New-SMDomain/DomainSettings_ExecutionRoleIdentityConfig") -Or
            ($_ -eq "Update-SMDomain/DomainSettingsForUpdate_ExecutionRoleIdentityConfig")
        }
        {
            $v = "DISABLED","USER_PROFILE_NAME"
            break
        }

        # Amazon.SageMaker.ExecutionStatus
        "Get-SMMonitoringExecutionList/StatusEquals"
        {
            $v = "Completed","CompletedWithViolations","Failed","InProgress","Pending","Stopped","Stopping"
            break
        }

        # Amazon.SageMaker.FeatureGroupSortBy
        "Get-SMFeatureGroupList/SortBy"
        {
            $v = "CreationTime","FeatureGroupStatus","Name","OfflineStoreStatus"
            break
        }

        # Amazon.SageMaker.FeatureGroupSortOrder
        "Get-SMFeatureGroupList/SortOrder"
        {
            $v = "Ascending","Descending"
            break
        }

        # Amazon.SageMaker.FeatureGroupStatus
        "Get-SMFeatureGroupList/FeatureGroupStatusEquals"
        {
            $v = "Created","CreateFailed","Creating","DeleteFailed","Deleting"
            break
        }

        # Amazon.SageMaker.Framework
        "New-SMCompilationJob/InputConfig_Framework"
        {
            $v = "DARKNET","KERAS","MXNET","ONNX","PYTORCH","SKLEARN","TENSORFLOW","TFLITE","XGBOOST"
            break
        }

        # Amazon.SageMaker.HyperParameterTuningAllocationStrategy
        "New-SMHyperParameterTuningJob/TrainingJobDefinition_HyperParameterTuningResourceConfig_AllocationStrategy"
        {
            $v = "Prioritized"
            break
        }

        # Amazon.SageMaker.HyperParameterTuningJobObjectiveType
        {
            ($_ -eq "New-SMHyperParameterTuningJob/HyperParameterTuningJobConfig_HyperParameterTuningJobObjective_Type") -Or
            ($_ -eq "New-SMHyperParameterTuningJob/TrainingJobDefinition_TuningObjective_Type")
        }
        {
            $v = "Maximize","Minimize"
            break
        }

        # Amazon.SageMaker.HyperParameterTuningJobSortByOptions
        "Get-SMHyperParameterTuningJobList/SortBy"
        {
            $v = "CreationTime","Name","Status"
            break
        }

        # Amazon.SageMaker.HyperParameterTuningJobStatus
        "Get-SMHyperParameterTuningJobList/StatusEquals"
        {
            $v = "Completed","Failed","InProgress","Stopped","Stopping"
            break
        }

        # Amazon.SageMaker.HyperParameterTuningJobStrategyType
        "New-SMHyperParameterTuningJob/HyperParameterTuningJobConfig_Strategy"
        {
            $v = "Bayesian","Grid","Hyperband","Random"
            break
        }

        # Amazon.SageMaker.HyperParameterTuningJobWarmStartType
        "New-SMHyperParameterTuningJob/WarmStartConfig_WarmStartType"
        {
            $v = "IdenticalDataAndAlgorithm","TransferLearning"
            break
        }

        # Amazon.SageMaker.ImageSortBy
        "Get-SMImageList/SortBy"
        {
            $v = "CREATION_TIME","IMAGE_NAME","LAST_MODIFIED_TIME"
            break
        }

        # Amazon.SageMaker.ImageSortOrder
        "Get-SMImageList/SortOrder"
        {
            $v = "ASCENDING","DESCENDING"
            break
        }

        # Amazon.SageMaker.ImageVersionSortBy
        "Get-SMImageVersionList/SortBy"
        {
            $v = "CREATION_TIME","LAST_MODIFIED_TIME","VERSION"
            break
        }

        # Amazon.SageMaker.ImageVersionSortOrder
        "Get-SMImageVersionList/SortOrder"
        {
            $v = "ASCENDING","DESCENDING"
            break
        }

        # Amazon.SageMaker.InferenceExecutionMode
        "New-SMModel/InferenceExecutionConfig_Mode"
        {
            $v = "Direct","Serial"
            break
        }

        # Amazon.SageMaker.InstanceType
        {
            ($_ -eq "New-SMNotebookInstance/InstanceType") -Or
            ($_ -eq "Update-SMNotebookInstance/InstanceType")
        }
        {
            $v = "ml.c4.2xlarge","ml.c4.4xlarge","ml.c4.8xlarge","ml.c4.xlarge","ml.c5.18xlarge","ml.c5.2xlarge","ml.c5.4xlarge","ml.c5.9xlarge","ml.c5.xlarge","ml.c5d.18xlarge","ml.c5d.2xlarge","ml.c5d.4xlarge","ml.c5d.9xlarge","ml.c5d.xlarge","ml.g4dn.12xlarge","ml.g4dn.16xlarge","ml.g4dn.2xlarge","ml.g4dn.4xlarge","ml.g4dn.8xlarge","ml.g4dn.xlarge","ml.g5.12xlarge","ml.g5.16xlarge","ml.g5.24xlarge","ml.g5.2xlarge","ml.g5.48xlarge","ml.g5.4xlarge","ml.g5.8xlarge","ml.g5.xlarge","ml.m4.10xlarge","ml.m4.16xlarge","ml.m4.2xlarge","ml.m4.4xlarge","ml.m4.xlarge","ml.m5.12xlarge","ml.m5.24xlarge","ml.m5.2xlarge","ml.m5.4xlarge","ml.m5.xlarge","ml.m5d.12xlarge","ml.m5d.16xlarge","ml.m5d.24xlarge","ml.m5d.2xlarge","ml.m5d.4xlarge","ml.m5d.8xlarge","ml.m5d.large","ml.m5d.xlarge","ml.p2.16xlarge","ml.p2.8xlarge","ml.p2.xlarge","ml.p3.16xlarge","ml.p3.2xlarge","ml.p3.8xlarge","ml.p3dn.24xlarge","ml.r5.12xlarge","ml.r5.16xlarge","ml.r5.24xlarge","ml.r5.2xlarge","ml.r5.4xlarge","ml.r5.8xlarge","ml.r5.large","ml.r5.xlarge","ml.t2.2xlarge","ml.t2.large","ml.t2.medium","ml.t2.xlarge","ml.t3.2xlarge","ml.t3.large","ml.t3.medium","ml.t3.xlarge"
            break
        }

        # Amazon.SageMaker.JoinSource
        "New-SMTransformJob/DataProcessing_JoinSource"
        {
            $v = "Input","None"
            break
        }

        # Amazon.SageMaker.LabelingJobStatus
        "Get-SMLabelingJobList/StatusEquals"
        {
            $v = "Completed","Failed","Initializing","InProgress","Stopped","Stopping"
            break
        }

        # Amazon.SageMaker.ListCompilationJobsSortBy
        "Get-SMCompilationJobList/SortBy"
        {
            $v = "CreationTime","Name","Status"
            break
        }

        # Amazon.SageMaker.ListDeviceFleetsSortBy
        "Get-SMDeviceFleetList/SortBy"
        {
            $v = "CREATION_TIME","LAST_MODIFIED_TIME","NAME"
            break
        }

        # Amazon.SageMaker.ListEdgeDeploymentPlansSortBy
        "Get-SMEdgeDeploymentPlanList/SortBy"
        {
            $v = "CREATION_TIME","DEVICE_FLEET_NAME","LAST_MODIFIED_TIME","NAME"
            break
        }

        # Amazon.SageMaker.ListEdgePackagingJobsSortBy
        "Get-SMEdgePackagingJobList/SortBy"
        {
            $v = "CREATION_TIME","LAST_MODIFIED_TIME","MODEL_NAME","NAME","STATUS"
            break
        }

        # Amazon.SageMaker.ListInferenceRecommendationsJobsSortBy
        "Get-SMInferenceRecommendationsJobList/SortBy"
        {
            $v = "CreationTime","Name","Status"
            break
        }

        # Amazon.SageMaker.ListLabelingJobsForWorkteamSortByOptions
        "Get-SMLabelingJobListForWorkteam/SortBy"
        {
            $v = "CreationTime"
            break
        }

        # Amazon.SageMaker.ListWorkforcesSortByOptions
        "Get-SMWorkforceList/SortBy"
        {
            $v = "CreateDate","Name"
            break
        }

        # Amazon.SageMaker.ListWorkteamsSortByOptions
        "Get-SMWorkteamList/SortBy"
        {
            $v = "CreateDate","Name"
            break
        }

        # Amazon.SageMaker.ModelApprovalStatus
        {
            ($_ -eq "Get-SMModelPackageList/ModelApprovalStatus") -Or
            ($_ -eq "New-SMModelPackage/ModelApprovalStatus") -Or
            ($_ -eq "Update-SMModelPackage/ModelApprovalStatus")
        }
        {
            $v = "Approved","PendingManualApproval","Rejected"
            break
        }

        # Amazon.SageMaker.ModelPackageGroupSortBy
        "Get-SMModelPackageGroupList/SortBy"
        {
            $v = "CreationTime","Name"
            break
        }

        # Amazon.SageMaker.ModelPackageSortBy
        "Get-SMModelPackageList/SortBy"
        {
            $v = "CreationTime","Name"
            break
        }

        # Amazon.SageMaker.ModelPackageType
        "Get-SMModelPackageList/ModelPackageType"
        {
            $v = "Both","Unversioned","Versioned"
            break
        }

        # Amazon.SageMaker.ModelSortKey
        "Get-SMModelList/SortBy"
        {
            $v = "CreationTime","Name"
            break
        }

        # Amazon.SageMaker.MonitoringExecutionSortKey
        "Get-SMMonitoringExecutionList/SortBy"
        {
            $v = "CreationTime","ScheduledTime","Status"
            break
        }

        # Amazon.SageMaker.MonitoringJobDefinitionSortKey
        {
            ($_ -eq "Get-SMDataQualityJobDefinitionList/SortBy") -Or
            ($_ -eq "Get-SMModelBiasJobDefinitionList/SortBy") -Or
            ($_ -eq "Get-SMModelExplainabilityJobDefinitionList/SortBy") -Or
            ($_ -eq "Get-SMModelQualityJobDefinitionList/SortBy")
        }
        {
            $v = "CreationTime","Name"
            break
        }

        # Amazon.SageMaker.MonitoringProblemType
        "New-SMModelQualityJobDefinition/ModelQualityAppSpecification_ProblemType"
        {
            $v = "BinaryClassification","MulticlassClassification","Regression"
            break
        }

        # Amazon.SageMaker.MonitoringScheduleSortKey
        "Get-SMMonitoringScheduleList/SortBy"
        {
            $v = "CreationTime","Name","Status"
            break
        }

        # Amazon.SageMaker.MonitoringType
        {
            ($_ -eq "Get-SMMonitoringExecutionList/MonitoringTypeEquals") -Or
            ($_ -eq "Get-SMMonitoringScheduleList/MonitoringTypeEquals")
        }
        {
            $v = "DataQuality","ModelBias","ModelExplainability","ModelQuality"
            break
        }

        # Amazon.SageMaker.NotebookInstanceLifecycleConfigSortKey
        "Get-SMNotebookInstanceLifecycleConfigList/SortBy"
        {
            $v = "CreationTime","LastModifiedTime","Name"
            break
        }

        # Amazon.SageMaker.NotebookInstanceLifecycleConfigSortOrder
        "Get-SMNotebookInstanceLifecycleConfigList/SortOrder"
        {
            $v = "Ascending","Descending"
            break
        }

        # Amazon.SageMaker.NotebookInstanceSortKey
        "Get-SMNotebookInstanceList/SortBy"
        {
            $v = "CreationTime","Name","Status"
            break
        }

        # Amazon.SageMaker.NotebookInstanceSortOrder
        "Get-SMNotebookInstanceList/SortOrder"
        {
            $v = "Ascending","Descending"
            break
        }

        # Amazon.SageMaker.NotebookInstanceStatus
        "Get-SMNotebookInstanceList/StatusEquals"
        {
            $v = "Deleting","Failed","InService","Pending","Stopped","Stopping","Updating"
            break
        }

        # Amazon.SageMaker.OfflineStoreStatusValue
        "Get-SMFeatureGroupList/OfflineStoreStatusEquals"
        {
            $v = "Active","Blocked","Disabled"
            break
        }

        # Amazon.SageMaker.OrderKey
        {
            ($_ -eq "Get-SMConfigList/SortOrder") -Or
            ($_ -eq "Get-SMEndpointList/SortOrder") -Or
            ($_ -eq "Get-SMModelList/SortOrder")
        }
        {
            $v = "Ascending","Descending"
            break
        }

        # Amazon.SageMaker.ProblemType
        "New-SMAutoMLJob/ProblemType"
        {
            $v = "BinaryClassification","MulticlassClassification","Regression"
            break
        }

        # Amazon.SageMaker.ProcessingInstanceType
        {
            ($_ -eq "New-SMDataQualityJobDefinition/JobResources_ClusterConfig_InstanceType") -Or
            ($_ -eq "New-SMModelBiasJobDefinition/JobResources_ClusterConfig_InstanceType") -Or
            ($_ -eq "New-SMModelExplainabilityJobDefinition/JobResources_ClusterConfig_InstanceType") -Or
            ($_ -eq "New-SMModelQualityJobDefinition/JobResources_ClusterConfig_InstanceType") -Or
            ($_ -eq "New-SMProcessingJob/ProcessingResources_ClusterConfig_InstanceType")
        }
        {
            $v = "ml.c4.2xlarge","ml.c4.4xlarge","ml.c4.8xlarge","ml.c4.xlarge","ml.c5.18xlarge","ml.c5.2xlarge","ml.c5.4xlarge","ml.c5.9xlarge","ml.c5.xlarge","ml.g4dn.12xlarge","ml.g4dn.16xlarge","ml.g4dn.2xlarge","ml.g4dn.4xlarge","ml.g4dn.8xlarge","ml.g4dn.xlarge","ml.m4.10xlarge","ml.m4.16xlarge","ml.m4.2xlarge","ml.m4.4xlarge","ml.m4.xlarge","ml.m5.12xlarge","ml.m5.24xlarge","ml.m5.2xlarge","ml.m5.4xlarge","ml.m5.large","ml.m5.xlarge","ml.p2.16xlarge","ml.p2.8xlarge","ml.p2.xlarge","ml.p3.16xlarge","ml.p3.2xlarge","ml.p3.8xlarge","ml.r5.12xlarge","ml.r5.16xlarge","ml.r5.24xlarge","ml.r5.2xlarge","ml.r5.4xlarge","ml.r5.8xlarge","ml.r5.large","ml.r5.xlarge","ml.t3.2xlarge","ml.t3.large","ml.t3.medium","ml.t3.xlarge"
            break
        }

        # Amazon.SageMaker.ProcessingJobStatus
        "Get-SMProcessingJobList/StatusEquals"
        {
            $v = "Completed","Failed","InProgress","Stopped","Stopping"
            break
        }

        # Amazon.SageMaker.ProcessingS3DataDistributionType
        {
            ($_ -eq "New-SMDataQualityJobDefinition/DataQualityJobInput_BatchTransformInput_S3DataDistributionType") -Or
            ($_ -eq "New-SMDataQualityJobDefinition/DataQualityJobInput_EndpointInput_S3DataDistributionType") -Or
            ($_ -eq "New-SMModelBiasJobDefinition/ModelBiasJobInput_BatchTransformInput_S3DataDistributionType") -Or
            ($_ -eq "New-SMModelBiasJobDefinition/ModelBiasJobInput_EndpointInput_S3DataDistributionType") -Or
            ($_ -eq "New-SMModelExplainabilityJobDefinition/ModelExplainabilityJobInput_BatchTransformInput_S3DataDistributionType") -Or
            ($_ -eq "New-SMModelExplainabilityJobDefinition/ModelExplainabilityJobInput_EndpointInput_S3DataDistributionType") -Or
            ($_ -eq "New-SMModelQualityJobDefinition/ModelQualityJobInput_BatchTransformInput_S3DataDistributionType") -Or
            ($_ -eq "New-SMModelQualityJobDefinition/ModelQualityJobInput_EndpointInput_S3DataDistributionType")
        }
        {
            $v = "FullyReplicated","ShardedByS3Key"
            break
        }

        # Amazon.SageMaker.ProcessingS3InputMode
        {
            ($_ -eq "New-SMDataQualityJobDefinition/DataQualityJobInput_BatchTransformInput_S3InputMode") -Or
            ($_ -eq "New-SMDataQualityJobDefinition/DataQualityJobInput_EndpointInput_S3InputMode") -Or
            ($_ -eq "New-SMModelBiasJobDefinition/ModelBiasJobInput_BatchTransformInput_S3InputMode") -Or
            ($_ -eq "New-SMModelBiasJobDefinition/ModelBiasJobInput_EndpointInput_S3InputMode") -Or
            ($_ -eq "New-SMModelExplainabilityJobDefinition/ModelExplainabilityJobInput_BatchTransformInput_S3InputMode") -Or
            ($_ -eq "New-SMModelExplainabilityJobDefinition/ModelExplainabilityJobInput_EndpointInput_S3InputMode") -Or
            ($_ -eq "New-SMModelQualityJobDefinition/ModelQualityJobInput_BatchTransformInput_S3InputMode") -Or
            ($_ -eq "New-SMModelQualityJobDefinition/ModelQualityJobInput_EndpointInput_S3InputMode")
        }
        {
            $v = "File","Pipe"
            break
        }

        # Amazon.SageMaker.ProjectSortBy
        "Get-SMProjectList/SortBy"
        {
            $v = "CreationTime","Name"
            break
        }

        # Amazon.SageMaker.ProjectSortOrder
        "Get-SMProjectList/SortOrder"
        {
            $v = "Ascending","Descending"
            break
        }

        # Amazon.SageMaker.RecommendationJobStatus
        {
            ($_ -eq "Get-SMInferenceRecommendationsJobStepList/Status") -Or
            ($_ -eq "Get-SMInferenceRecommendationsJobList/StatusEquals")
        }
        {
            $v = "COMPLETED","FAILED","IN_PROGRESS","PENDING","STOPPED","STOPPING"
            break
        }

        # Amazon.SageMaker.RecommendationJobType
        "New-SMInferenceRecommendationsJob/JobType"
        {
            $v = "Advanced","Default"
            break
        }

        # Amazon.SageMaker.RecommendationStepType
        "Get-SMInferenceRecommendationsJobStepList/StepType"
        {
            $v = "BENCHMARK"
            break
        }

        # Amazon.SageMaker.ResourceType
        {
            ($_ -eq "Get-SMSearchSuggestion/Resource") -Or
            ($_ -eq "Search-SMResource/Resource")
        }
        {
            $v = "Endpoint","Experiment","ExperimentTrial","ExperimentTrialComponent","FeatureGroup","FeatureMetadata","HyperParameterTuningJob","ModelPackage","ModelPackageGroup","Pipeline","PipelineExecution","Project","TrainingJob"
            break
        }

        # Amazon.SageMaker.RetentionType
        "Remove-SMDomain/RetentionPolicy_HomeEfsFileSystem"
        {
            $v = "Delete","Retain"
            break
        }

        # Amazon.SageMaker.RootAccess
        {
            ($_ -eq "New-SMNotebookInstance/RootAccess") -Or
            ($_ -eq "Update-SMNotebookInstance/RootAccess")
        }
        {
            $v = "Disabled","Enabled"
            break
        }

        # Amazon.SageMaker.S3DataType
        "New-SMTransformJob/TransformInput_DataSource_S3DataSource_S3DataType"
        {
            $v = "AugmentedManifestFile","ManifestFile","S3Prefix"
            break
        }

        # Amazon.SageMaker.ScheduleStatus
        "Get-SMMonitoringScheduleList/StatusEquals"
        {
            $v = "Failed","Pending","Scheduled","Stopped"
            break
        }

        # Amazon.SageMaker.SearchSortOrder
        "Search-SMResource/SortOrder"
        {
            $v = "Ascending","Descending"
            break
        }

        # Amazon.SageMaker.SortActionsBy
        "Get-SMActionList/SortBy"
        {
            $v = "CreationTime","Name"
            break
        }

        # Amazon.SageMaker.SortArtifactsBy
        "Get-SMArtifactList/SortBy"
        {
            $v = "CreationTime"
            break
        }

        # Amazon.SageMaker.SortAssociationsBy
        "Get-SMAssociationList/SortBy"
        {
            $v = "CreationTime","DestinationArn","DestinationType","SourceArn","SourceType"
            break
        }

        # Amazon.SageMaker.SortBy
        {
            ($_ -eq "Get-SMLabelingJobList/SortBy") -Or
            ($_ -eq "Get-SMProcessingJobList/SortBy") -Or
            ($_ -eq "Get-SMTrainingJobList/SortBy") -Or
            ($_ -eq "Get-SMTransformJobList/SortBy")
        }
        {
            $v = "CreationTime","Name","Status"
            break
        }

        # Amazon.SageMaker.SortContextsBy
        "Get-SMContextList/SortBy"
        {
            $v = "CreationTime","Name"
            break
        }

        # Amazon.SageMaker.SortExperimentsBy
        "Get-SMExperimentList/SortBy"
        {
            $v = "CreationTime","Name"
            break
        }

        # Amazon.SageMaker.SortLineageGroupsBy
        "Get-SMLineageGroupList/SortBy"
        {
            $v = "CreationTime","Name"
            break
        }

        # Amazon.SageMaker.SortOrder
        {
            ($_ -eq "Get-SMActionList/SortOrder") -Or
            ($_ -eq "Get-SMAlgorithmList/SortOrder") -Or
            ($_ -eq "Get-SMAppImageConfigList/SortOrder") -Or
            ($_ -eq "Get-SMAppList/SortOrder") -Or
            ($_ -eq "Get-SMArtifactList/SortOrder") -Or
            ($_ -eq "Get-SMAssociationList/SortOrder") -Or
            ($_ -eq "Get-SMCompilationJobList/SortOrder") -Or
            ($_ -eq "Get-SMContextList/SortOrder") -Or
            ($_ -eq "Get-SMDataQualityJobDefinitionList/SortOrder") -Or
            ($_ -eq "Get-SMDeviceFleetList/SortOrder") -Or
            ($_ -eq "Get-SMEdgeDeploymentPlanList/SortOrder") -Or
            ($_ -eq "Get-SMEdgePackagingJobList/SortOrder") -Or
            ($_ -eq "Get-SMExperimentList/SortOrder") -Or
            ($_ -eq "Get-SMFlowDefinitionList/SortOrder") -Or
            ($_ -eq "Get-SMHumanTaskUiList/SortOrder") -Or
            ($_ -eq "Get-SMHyperParameterTuningJobList/SortOrder") -Or
            ($_ -eq "Get-SMInferenceRecommendationsJobList/SortOrder") -Or
            ($_ -eq "Get-SMLabelingJobList/SortOrder") -Or
            ($_ -eq "Get-SMLabelingJobListForWorkteam/SortOrder") -Or
            ($_ -eq "Get-SMLineageGroupList/SortOrder") -Or
            ($_ -eq "Get-SMModelBiasJobDefinitionList/SortOrder") -Or
            ($_ -eq "Get-SMModelExplainabilityJobDefinitionList/SortOrder") -Or
            ($_ -eq "Get-SMModelPackageGroupList/SortOrder") -Or
            ($_ -eq "Get-SMModelPackageList/SortOrder") -Or
            ($_ -eq "Get-SMModelQualityJobDefinitionList/SortOrder") -Or
            ($_ -eq "Get-SMMonitoringExecutionList/SortOrder") -Or
            ($_ -eq "Get-SMMonitoringScheduleList/SortOrder") -Or
            ($_ -eq "Get-SMPipelineExecutionList/SortOrder") -Or
            ($_ -eq "Get-SMPipelineExecutionStepList/SortOrder") -Or
            ($_ -eq "Get-SMPipelineList/SortOrder") -Or
            ($_ -eq "Get-SMProcessingJobList/SortOrder") -Or
            ($_ -eq "Get-SMStudioLifecycleConfigList/SortOrder") -Or
            ($_ -eq "Get-SMTrainingJobList/SortOrder") -Or
            ($_ -eq "Get-SMTrainingJobsForHyperParameterTuningJobList/SortOrder") -Or
            ($_ -eq "Get-SMTransformJobList/SortOrder") -Or
            ($_ -eq "Get-SMTrialComponentList/SortOrder") -Or
            ($_ -eq "Get-SMTrialList/SortOrder") -Or
            ($_ -eq "Get-SMUserProfileList/SortOrder") -Or
            ($_ -eq "Get-SMWorkforceList/SortOrder") -Or
            ($_ -eq "Get-SMWorkteamList/SortOrder")
        }
        {
            $v = "Ascending","Descending"
            break
        }

        # Amazon.SageMaker.SortPipelineExecutionsBy
        "Get-SMPipelineExecutionList/SortBy"
        {
            $v = "CreationTime","PipelineExecutionArn"
            break
        }

        # Amazon.SageMaker.SortPipelinesBy
        "Get-SMPipelineList/SortBy"
        {
            $v = "CreationTime","Name"
            break
        }

        # Amazon.SageMaker.SortTrialComponentsBy
        "Get-SMTrialComponentList/SortBy"
        {
            $v = "CreationTime","Name"
            break
        }

        # Amazon.SageMaker.SortTrialsBy
        "Get-SMTrialList/SortBy"
        {
            $v = "CreationTime","Name"
            break
        }

        # Amazon.SageMaker.SplitType
        "New-SMTransformJob/TransformInput_SplitType"
        {
            $v = "Line","None","RecordIO","TFRecord"
            break
        }

        # Amazon.SageMaker.StudioLifecycleConfigAppType
        {
            ($_ -eq "Get-SMStudioLifecycleConfigList/AppTypeEquals") -Or
            ($_ -eq "New-SMStudioLifecycleConfig/StudioLifecycleConfigAppType")
        }
        {
            $v = "JupyterServer","KernelGateway"
            break
        }

        # Amazon.SageMaker.StudioLifecycleConfigSortKey
        "Get-SMStudioLifecycleConfigList/SortBy"
        {
            $v = "CreationTime","LastModifiedTime","Name"
            break
        }

        # Amazon.SageMaker.TargetDevice
        "New-SMCompilationJob/OutputConfig_TargetDevice"
        {
            $v = "aisage","amba_cv2","amba_cv22","amba_cv25","coreml","deeplens","imx8mplus","imx8qm","jacinto_tda4vm","jetson_nano","jetson_tx1","jetson_tx2","jetson_xavier","lambda","ml_c4","ml_c5","ml_eia2","ml_g4dn","ml_inf1","ml_m4","ml_m5","ml_p2","ml_p3","qcs603","qcs605","rasp3b","rk3288","rk3399","sbe_c","sitara_am57x","x86_win32","x86_win64"
            break
        }

        # Amazon.SageMaker.TargetPlatformAccelerator
        "New-SMCompilationJob/OutputConfig_TargetPlatform_Accelerator"
        {
            $v = "INTEL_GRAPHICS","MALI","NNA","NVIDIA"
            break
        }

        # Amazon.SageMaker.TargetPlatformArch
        "New-SMCompilationJob/OutputConfig_TargetPlatform_Arch"
        {
            $v = "ARM64","ARM_EABI","ARM_EABIHF","X86","X86_64"
            break
        }

        # Amazon.SageMaker.TargetPlatformOs
        "New-SMCompilationJob/OutputConfig_TargetPlatform_Os"
        {
            $v = "ANDROID","LINUX"
            break
        }

        # Amazon.SageMaker.TrafficRoutingConfigType
        {
            ($_ -eq "New-SMEndpoint/DeploymentConfig_BlueGreenUpdatePolicy_TrafficRoutingConfiguration_Type") -Or
            ($_ -eq "Update-SMEndpoint/DeploymentConfig_BlueGreenUpdatePolicy_TrafficRoutingConfiguration_Type")
        }
        {
            $v = "ALL_AT_ONCE","CANARY","LINEAR"
            break
        }

        # Amazon.SageMaker.TrafficType
        "New-SMInferenceRecommendationsJob/InputConfig_TrafficPattern_TrafficType"
        {
            $v = "PHASES"
            break
        }

        # Amazon.SageMaker.TrainingInputMode
        "New-SMHyperParameterTuningJob/TrainingJobDefinition_AlgorithmSpecification_TrainingInputMode"
        {
            $v = "FastFile","File","Pipe"
            break
        }

        # Amazon.SageMaker.TrainingInstanceType
        "New-SMHyperParameterTuningJob/TrainingJobDefinition_HyperParameterTuningResourceConfig_InstanceType"
        {
            $v = "ml.c4.2xlarge","ml.c4.4xlarge","ml.c4.8xlarge","ml.c4.xlarge","ml.c5.18xlarge","ml.c5.2xlarge","ml.c5.4xlarge","ml.c5.9xlarge","ml.c5.xlarge","ml.c5n.18xlarge","ml.c5n.2xlarge","ml.c5n.4xlarge","ml.c5n.9xlarge","ml.c5n.xlarge","ml.g4dn.12xlarge","ml.g4dn.16xlarge","ml.g4dn.2xlarge","ml.g4dn.4xlarge","ml.g4dn.8xlarge","ml.g4dn.xlarge","ml.g5.12xlarge","ml.g5.16xlarge","ml.g5.24xlarge","ml.g5.2xlarge","ml.g5.48xlarge","ml.g5.4xlarge","ml.g5.8xlarge","ml.g5.xlarge","ml.m4.10xlarge","ml.m4.16xlarge","ml.m4.2xlarge","ml.m4.4xlarge","ml.m4.xlarge","ml.m5.12xlarge","ml.m5.24xlarge","ml.m5.2xlarge","ml.m5.4xlarge","ml.m5.large","ml.m5.xlarge","ml.p2.16xlarge","ml.p2.8xlarge","ml.p2.xlarge","ml.p3.16xlarge","ml.p3.2xlarge","ml.p3.8xlarge","ml.p3dn.24xlarge","ml.p4d.24xlarge"
            break
        }

        # Amazon.SageMaker.TrainingJobEarlyStoppingType
        "New-SMHyperParameterTuningJob/HyperParameterTuningJobConfig_TrainingJobEarlyStoppingType"
        {
            $v = "Auto","Off"
            break
        }

        # Amazon.SageMaker.TrainingJobSortByOptions
        "Get-SMTrainingJobsForHyperParameterTuningJobList/SortBy"
        {
            $v = "CreationTime","FinalObjectiveMetricValue","Name","Status"
            break
        }

        # Amazon.SageMaker.TrainingJobStatus
        {
            ($_ -eq "Get-SMTrainingJobList/StatusEquals") -Or
            ($_ -eq "Get-SMTrainingJobsForHyperParameterTuningJobList/StatusEquals")
        }
        {
            $v = "Completed","Failed","InProgress","Stopped","Stopping"
            break
        }

        # Amazon.SageMaker.TransformInstanceType
        "New-SMTransformJob/TransformResources_InstanceType"
        {
            $v = "ml.c4.2xlarge","ml.c4.4xlarge","ml.c4.8xlarge","ml.c4.xlarge","ml.c5.18xlarge","ml.c5.2xlarge","ml.c5.4xlarge","ml.c5.9xlarge","ml.c5.xlarge","ml.g4dn.12xlarge","ml.g4dn.16xlarge","ml.g4dn.2xlarge","ml.g4dn.4xlarge","ml.g4dn.8xlarge","ml.g4dn.xlarge","ml.m4.10xlarge","ml.m4.16xlarge","ml.m4.2xlarge","ml.m4.4xlarge","ml.m4.xlarge","ml.m5.12xlarge","ml.m5.24xlarge","ml.m5.2xlarge","ml.m5.4xlarge","ml.m5.large","ml.m5.xlarge","ml.p2.16xlarge","ml.p2.8xlarge","ml.p2.xlarge","ml.p3.16xlarge","ml.p3.2xlarge","ml.p3.8xlarge"
            break
        }

        # Amazon.SageMaker.TransformJobStatus
        "Get-SMTransformJobList/StatusEquals"
        {
            $v = "Completed","Failed","InProgress","Stopped","Stopping"
            break
        }

        # Amazon.SageMaker.TrialComponentPrimaryStatus
        {
            ($_ -eq "New-SMTrialComponent/Status_PrimaryStatus") -Or
            ($_ -eq "Update-SMTrialComponent/Status_PrimaryStatus")
        }
        {
            $v = "Completed","Failed","InProgress","Stopped","Stopping"
            break
        }

        # Amazon.SageMaker.UserProfileSortKey
        "Get-SMUserProfileList/SortBy"
        {
            $v = "CreationTime","LastModifiedTime"
            break
        }

        # Amazon.SageMaker.WarmPoolResourceStatus
        "Get-SMTrainingJobList/WarmPoolStatusEquals"
        {
            $v = "Available","InUse","Reused","Terminated"
            break
        }


    }

    $v |
        Where-Object { $_ -like "$wordToComplete*" } |
        ForEach-Object { New-Object System.Management.Automation.CompletionResult $_, $_, 'ParameterValue', $_ }
}

$SM_map = @{
    "AppNetworkAccessType"=@("New-SMDomain")
    "AppSecurityGroupManagement"=@("New-SMDomain")
    "AppType"=@("Get-SMApp","New-SMApp","Remove-SMApp")
    "AppTypeEquals"=@("Get-SMStudioLifecycleConfigList")
    "AssociationType"=@("Add-SMAssociation","Get-SMAssociationList")
    "AuthMode"=@("New-SMDomain")
    "AutoMLJobConfig_Mode"=@("New-SMAutoMLJob")
    "AutoMLJobObjective_MetricName"=@("New-SMAutoMLJob")
    "BatchStrategy"=@("New-SMTransformJob")
    "DataProcessing_JoinSource"=@("New-SMTransformJob")
    "DataQualityJobInput_BatchTransformInput_S3DataDistributionType"=@("New-SMDataQualityJobDefinition")
    "DataQualityJobInput_BatchTransformInput_S3InputMode"=@("New-SMDataQualityJobDefinition")
    "DataQualityJobInput_EndpointInput_S3DataDistributionType"=@("New-SMDataQualityJobDefinition")
    "DataQualityJobInput_EndpointInput_S3InputMode"=@("New-SMDataQualityJobDefinition")
    "DeploymentConfig_BlueGreenUpdatePolicy_TrafficRoutingConfiguration_CanarySize_Type"=@("New-SMEndpoint","Update-SMEndpoint")
    "DeploymentConfig_BlueGreenUpdatePolicy_TrafficRoutingConfiguration_LinearStepSize_Type"=@("New-SMEndpoint","Update-SMEndpoint")
    "DeploymentConfig_BlueGreenUpdatePolicy_TrafficRoutingConfiguration_Type"=@("New-SMEndpoint","Update-SMEndpoint")
    "DirectInternetAccess"=@("New-SMNotebookInstance")
    "Direction"=@("Find-SMLineage")
    "DomainSettings_ExecutionRoleIdentityConfig"=@("New-SMDomain")
    "DomainSettings_RStudioServerProDomainSettings_DefaultResourceSpec_InstanceType"=@("New-SMDomain")
    "DomainSettingsForUpdate_ExecutionRoleIdentityConfig"=@("Update-SMDomain")
    "DomainSettingsForUpdate_RStudioServerProDomainSettingsForUpdate_DefaultResourceSpec_InstanceType"=@("Update-SMDomain")
    "ExplainerConfig_ClarifyExplainerConfig_ShapConfig_TextConfig_Granularity"=@("New-SMEndpointConfig")
    "ExplainerConfig_ClarifyExplainerConfig_ShapConfig_TextConfig_Language"=@("New-SMEndpointConfig")
    "FeatureGroupStatusEquals"=@("Get-SMFeatureGroupList")
    "HumanLoopRequestSource_AwsManagedHumanLoopRequestSource"=@("New-SMFlowDefinition")
    "HyperParameterTuningJobConfig_HyperParameterTuningJobObjective_Type"=@("New-SMHyperParameterTuningJob")
    "HyperParameterTuningJobConfig_Strategy"=@("New-SMHyperParameterTuningJob")
    "HyperParameterTuningJobConfig_TrainingJobEarlyStoppingType"=@("New-SMHyperParameterTuningJob")
    "InferenceExecutionConfig_Mode"=@("New-SMModel")
    "InputConfig_Framework"=@("New-SMCompilationJob")
    "InputConfig_TrafficPattern_TrafficType"=@("New-SMInferenceRecommendationsJob")
    "InstanceType"=@("New-SMNotebookInstance","Update-SMNotebookInstance")
    "JobResources_ClusterConfig_InstanceType"=@("New-SMDataQualityJobDefinition","New-SMModelBiasJobDefinition","New-SMModelExplainabilityJobDefinition","New-SMModelQualityJobDefinition")
    "JobType"=@("New-SMInferenceRecommendationsJob")
    "ModelApprovalStatus"=@("Get-SMModelPackageList","New-SMModelPackage","Update-SMModelPackage")
    "ModelBiasJobInput_BatchTransformInput_S3DataDistributionType"=@("New-SMModelBiasJobDefinition")
    "ModelBiasJobInput_BatchTransformInput_S3InputMode"=@("New-SMModelBiasJobDefinition")
    "ModelBiasJobInput_EndpointInput_S3DataDistributionType"=@("New-SMModelBiasJobDefinition")
    "ModelBiasJobInput_EndpointInput_S3InputMode"=@("New-SMModelBiasJobDefinition")
    "ModelExplainabilityJobInput_BatchTransformInput_S3DataDistributionType"=@("New-SMModelExplainabilityJobDefinition")
    "ModelExplainabilityJobInput_BatchTransformInput_S3InputMode"=@("New-SMModelExplainabilityJobDefinition")
    "ModelExplainabilityJobInput_EndpointInput_S3DataDistributionType"=@("New-SMModelExplainabilityJobDefinition")
    "ModelExplainabilityJobInput_EndpointInput_S3InputMode"=@("New-SMModelExplainabilityJobDefinition")
    "ModelPackageType"=@("Get-SMModelPackageList")
    "ModelQualityAppSpecification_ProblemType"=@("New-SMModelQualityJobDefinition")
    "ModelQualityJobInput_BatchTransformInput_S3DataDistributionType"=@("New-SMModelQualityJobDefinition")
    "ModelQualityJobInput_BatchTransformInput_S3InputMode"=@("New-SMModelQualityJobDefinition")
    "ModelQualityJobInput_EndpointInput_S3DataDistributionType"=@("New-SMModelQualityJobDefinition")
    "ModelQualityJobInput_EndpointInput_S3InputMode"=@("New-SMModelQualityJobDefinition")
    "MonitoringTypeEquals"=@("Get-SMMonitoringExecutionList","Get-SMMonitoringScheduleList")
    "OfflineStoreStatusEquals"=@("Get-SMFeatureGroupList")
    "OutputConfig_PresetDeploymentType"=@("New-SMDeviceFleet","New-SMEdgePackagingJob","Update-SMDeviceFleet")
    "OutputConfig_TargetDevice"=@("New-SMCompilationJob")
    "OutputConfig_TargetPlatform_Accelerator"=@("New-SMCompilationJob")
    "OutputConfig_TargetPlatform_Arch"=@("New-SMCompilationJob")
    "OutputConfig_TargetPlatform_Os"=@("New-SMCompilationJob")
    "ProblemType"=@("New-SMAutoMLJob")
    "ProcessingResources_ClusterConfig_InstanceType"=@("New-SMProcessingJob")
    "Resource"=@("Get-SMSearchSuggestion","Search-SMResource")
    "ResourceSpec_InstanceType"=@("New-SMApp")
    "RetentionPolicy_HomeEfsFileSystem"=@("Remove-SMDomain")
    "RootAccess"=@("New-SMNotebookInstance","Update-SMNotebookInstance")
    "SearchExpression_Operator"=@("Search-SMResource")
    "SortBy"=@("Get-SMActionList","Get-SMAlgorithmList","Get-SMAppImageConfigList","Get-SMAppList","Get-SMArtifactList","Get-SMAssociationList","Get-SMAutoMLJobList","Get-SMCandidatesForAutoMLJobList","Get-SMCodeRepositoryList","Get-SMCompilationJobList","Get-SMConfigList","Get-SMContextList","Get-SMDataQualityJobDefinitionList","Get-SMDeviceFleetList","Get-SMEdgeDeploymentPlanList","Get-SMEdgePackagingJobList","Get-SMEndpointList","Get-SMExperimentList","Get-SMFeatureGroupList","Get-SMHyperParameterTuningJobList","Get-SMImageList","Get-SMImageVersionList","Get-SMInferenceRecommendationsJobList","Get-SMLabelingJobList","Get-SMLabelingJobListForWorkteam","Get-SMLineageGroupList","Get-SMModelBiasJobDefinitionList","Get-SMModelExplainabilityJobDefinitionList","Get-SMModelList","Get-SMModelPackageGroupList","Get-SMModelPackageList","Get-SMModelQualityJobDefinitionList","Get-SMMonitoringExecutionList","Get-SMMonitoringScheduleList","Get-SMNotebookInstanceLifecycleConfigList","Get-SMNotebookInstanceList","Get-SMPipelineExecutionList","Get-SMPipelineList","Get-SMProcessingJobList","Get-SMProjectList","Get-SMStudioLifecycleConfigList","Get-SMTrainingJobList","Get-SMTrainingJobsForHyperParameterTuningJobList","Get-SMTransformJobList","Get-SMTrialComponentList","Get-SMTrialList","Get-SMUserProfileList","Get-SMWorkforceList","Get-SMWorkteamList")
    "SortOrder"=@("Get-SMActionList","Get-SMAlgorithmList","Get-SMAppImageConfigList","Get-SMAppList","Get-SMArtifactList","Get-SMAssociationList","Get-SMAutoMLJobList","Get-SMCandidatesForAutoMLJobList","Get-SMCodeRepositoryList","Get-SMCompilationJobList","Get-SMConfigList","Get-SMContextList","Get-SMDataQualityJobDefinitionList","Get-SMDeviceFleetList","Get-SMEdgeDeploymentPlanList","Get-SMEdgePackagingJobList","Get-SMEndpointList","Get-SMExperimentList","Get-SMFeatureGroupList","Get-SMFlowDefinitionList","Get-SMHumanTaskUiList","Get-SMHyperParameterTuningJobList","Get-SMImageList","Get-SMImageVersionList","Get-SMInferenceRecommendationsJobList","Get-SMLabelingJobList","Get-SMLabelingJobListForWorkteam","Get-SMLineageGroupList","Get-SMModelBiasJobDefinitionList","Get-SMModelExplainabilityJobDefinitionList","Get-SMModelList","Get-SMModelPackageGroupList","Get-SMModelPackageList","Get-SMModelQualityJobDefinitionList","Get-SMMonitoringExecutionList","Get-SMMonitoringScheduleList","Get-SMNotebookInstanceLifecycleConfigList","Get-SMNotebookInstanceList","Get-SMPipelineExecutionList","Get-SMPipelineExecutionStepList","Get-SMPipelineList","Get-SMProcessingJobList","Get-SMProjectList","Get-SMStudioLifecycleConfigList","Get-SMTrainingJobList","Get-SMTrainingJobsForHyperParameterTuningJobList","Get-SMTransformJobList","Get-SMTrialComponentList","Get-SMTrialList","Get-SMUserProfileList","Get-SMWorkforceList","Get-SMWorkteamList","Search-SMResource")
    "Status"=@("Get-SMInferenceRecommendationsJobStepList","New-SMAction","Update-SMAction")
    "Status_PrimaryStatus"=@("New-SMTrialComponent","Update-SMTrialComponent")
    "StatusEquals"=@("Get-SMAutoMLJobList","Get-SMCandidatesForAutoMLJobList","Get-SMCompilationJobList","Get-SMEdgePackagingJobList","Get-SMEndpointList","Get-SMHyperParameterTuningJobList","Get-SMInferenceRecommendationsJobList","Get-SMLabelingJobList","Get-SMMonitoringExecutionList","Get-SMMonitoringScheduleList","Get-SMNotebookInstanceList","Get-SMProcessingJobList","Get-SMTrainingJobList","Get-SMTrainingJobsForHyperParameterTuningJobList","Get-SMTransformJobList")
    "StepType"=@("Get-SMInferenceRecommendationsJobStepList")
    "StudioLifecycleConfigAppType"=@("New-SMStudioLifecycleConfig")
    "TrainingJobDefinition_AlgorithmSpecification_TrainingInputMode"=@("New-SMHyperParameterTuningJob")
    "TrainingJobDefinition_HyperParameterTuningResourceConfig_AllocationStrategy"=@("New-SMHyperParameterTuningJob")
    "TrainingJobDefinition_HyperParameterTuningResourceConfig_InstanceType"=@("New-SMHyperParameterTuningJob")
    "TrainingJobDefinition_TuningObjective_Type"=@("New-SMHyperParameterTuningJob")
    "TransformInput_CompressionType"=@("New-SMTransformJob")
    "TransformInput_DataSource_S3DataSource_S3DataType"=@("New-SMTransformJob")
    "TransformInput_SplitType"=@("New-SMTransformJob")
    "TransformOutput_AssembleWith"=@("New-SMTransformJob")
    "TransformResources_InstanceType"=@("New-SMTransformJob")
    "WarmPoolStatusEquals"=@("Get-SMTrainingJobList")
    "WarmStartConfig_WarmStartType"=@("New-SMHyperParameterTuningJob")
}

_awsArgumentCompleterRegistration $SM_Completers $SM_map

$SM_SelectCompleters = {
    param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

    $cmdletType = Invoke-Expression "[Amazon.PowerShell.Cmdlets.SM.$($commandName.Replace('-', ''))Cmdlet]"
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

$SM_SelectMap = @{
    "Select"=@("Add-SMAssociation",
               "Add-SMResourceTag",
               "Register-SMTrialComponent",
               "Get-SMDescribeModelPackage",
               "New-SMAction",
               "New-SMAlgorithm",
               "New-SMApp",
               "New-SMAppImageConfig",
               "New-SMArtifact",
               "New-SMAutoMLJob",
               "New-SMCodeRepository",
               "New-SMCompilationJob",
               "New-SMContext",
               "New-SMDataQualityJobDefinition",
               "New-SMDeviceFleet",
               "New-SMDomain",
               "New-SMEdgeDeploymentPlan",
               "New-SMEdgeDeploymentStage",
               "New-SMEdgePackagingJob",
               "New-SMEndpoint",
               "New-SMEndpointConfig",
               "New-SMExperiment",
               "New-SMFeatureGroup",
               "New-SMFlowDefinition",
               "New-SMHumanTaskUi",
               "New-SMHyperParameterTuningJob",
               "New-SMImage",
               "New-SMImageVersion",
               "New-SMInferenceRecommendationsJob",
               "New-SMLabelingJob",
               "New-SMModel",
               "New-SMModelBiasJobDefinition",
               "New-SMModelExplainabilityJobDefinition",
               "New-SMModelPackage",
               "New-SMModelPackageGroup",
               "New-SMModelQualityJobDefinition",
               "New-SMMonitoringSchedule",
               "New-SMNotebookInstance",
               "New-SMNotebookInstanceLifecycleConfig",
               "New-SMPipeline",
               "New-SMPresignedDomainUrl",
               "New-SMPresignedNotebookInstanceUrl",
               "New-SMProcessingJob",
               "New-SMProject",
               "New-SMStudioLifecycleConfig",
               "New-SMTrainingJob",
               "New-SMTransformJob",
               "New-SMTrial",
               "New-SMTrialComponent",
               "New-SMUserProfile",
               "New-SMWorkforce",
               "New-SMWorkteam",
               "Remove-SMAction",
               "Remove-SMAlgorithm",
               "Remove-SMApp",
               "Remove-SMAppImageConfig",
               "Remove-SMArtifact",
               "Remove-SMAssociation",
               "Remove-SMCodeRepository",
               "Remove-SMContext",
               "Remove-SMDataQualityJobDefinition",
               "Remove-SMDeviceFleet",
               "Remove-SMDomain",
               "Remove-SMEdgeDeploymentPlan",
               "Remove-SMEdgeDeploymentStage",
               "Remove-SMEndpoint",
               "Remove-SMEndpointConfig",
               "Remove-SMExperiment",
               "Remove-SMFeatureGroup",
               "Remove-SMFlowDefinition",
               "Remove-SMHumanTaskUi",
               "Remove-SMImage",
               "Remove-SMImageVersion",
               "Remove-SMModel",
               "Remove-SMModelBiasJobDefinition",
               "Remove-SMModelExplainabilityJobDefinition",
               "Remove-SMModelPackage",
               "Remove-SMModelPackageGroup",
               "Remove-SMModelPackageGroupPolicy",
               "Remove-SMModelQualityJobDefinition",
               "Remove-SMMonitoringSchedule",
               "Remove-SMNotebookInstance",
               "Remove-SMNotebookInstanceLifecycleConfig",
               "Remove-SMPipeline",
               "Remove-SMProject",
               "Remove-SMStudioLifecycleConfig",
               "Remove-SMResourceTag",
               "Remove-SMTrial",
               "Remove-SMTrialComponent",
               "Remove-SMUserProfile",
               "Remove-SMWorkforce",
               "Remove-SMWorkteam",
               "Remove-SMDevice",
               "Get-SMAction",
               "Get-SMAlgorithm",
               "Get-SMApp",
               "Get-SMAppImageConfig",
               "Get-SMArtifact",
               "Get-SMAutoMLJob",
               "Get-SMCodeRepository",
               "Get-SMCompilationJob",
               "Get-SMContext",
               "Get-SMDataQualityJobDefinition",
               "Get-SMDevice",
               "Get-SMDeviceFleet",
               "Get-SMDomain",
               "Get-SMEdgeDeploymentPlan",
               "Get-SMEdgePackagingJob",
               "Get-SMEndpoint",
               "Get-SMEndpointConfig",
               "Get-SMExperiment",
               "Get-SMFeatureGroup",
               "Get-SMFeatureMetadata",
               "Get-SMFlowDefinition",
               "Get-SMHumanTaskUi",
               "Get-SMHyperParameterTuningJob",
               "Get-SMImage",
               "Get-SMImageVersion",
               "Get-SMInferenceRecommendationsJob",
               "Get-SMLabelingJob",
               "Get-SMLineageGroup",
               "Get-SMModel",
               "Get-SMModelBiasJobDefinition",
               "Get-SMModelExplainabilityJobDefinition",
               "Get-SMModelPackage",
               "Get-SMModelPackageGroup",
               "Get-SMModelQualityJobDefinition",
               "Get-SMMonitoringSchedule",
               "Get-SMNotebookInstance",
               "Get-SMNotebookInstanceLifecycleConfig",
               "Get-SMPipeline",
               "Get-SMPipelineDefinitionForExecution",
               "Get-SMPipelineExecution",
               "Get-SMProcessingJob",
               "Get-SMProject",
               "Get-SMStudioLifecycleConfig",
               "Get-SMSubscribedWorkteam",
               "Get-SMTrainingJob",
               "Get-SMTransformJob",
               "Get-SMTrial",
               "Get-SMTrialComponent",
               "Get-SMUserProfile",
               "Get-SMWorkforce",
               "Get-SMWorkteam",
               "Disable-SMSagemakerServicecatalogPortfolio",
               "Unregister-SMTrialComponent",
               "Enable-SMSagemakerServicecatalogPortfolio",
               "Get-SMDeviceFleetReport",
               "Get-SMLineageGroupPolicy",
               "Get-SMModelPackageGroupPolicy",
               "Get-SMSagemakerServicecatalogPortfolioStatus",
               "Get-SMSearchSuggestion",
               "Get-SMActionList",
               "Get-SMAlgorithmList",
               "Get-SMAppImageConfigList",
               "Get-SMAppList",
               "Get-SMArtifactList",
               "Get-SMAssociationList",
               "Get-SMAutoMLJobList",
               "Get-SMCandidatesForAutoMLJobList",
               "Get-SMCodeRepositoryList",
               "Get-SMCompilationJobList",
               "Get-SMContextList",
               "Get-SMDataQualityJobDefinitionList",
               "Get-SMDeviceFleetList",
               "Get-SMDeviceList",
               "Get-SMDomainList",
               "Get-SMEdgeDeploymentPlanList",
               "Get-SMEdgePackagingJobList",
               "Get-SMConfigList",
               "Get-SMEndpointList",
               "Get-SMExperimentList",
               "Get-SMFeatureGroupList",
               "Get-SMFlowDefinitionList",
               "Get-SMHumanTaskUiList",
               "Get-SMHyperParameterTuningJobList",
               "Get-SMImageList",
               "Get-SMImageVersionList",
               "Get-SMInferenceRecommendationsJobList",
               "Get-SMInferenceRecommendationsJobStepList",
               "Get-SMLabelingJobList",
               "Get-SMLabelingJobListForWorkteam",
               "Get-SMLineageGroupList",
               "Get-SMModelBiasJobDefinitionList",
               "Get-SMModelExplainabilityJobDefinitionList",
               "Get-SMModelMetadataList",
               "Get-SMModelPackageGroupList",
               "Get-SMModelPackageList",
               "Get-SMModelQualityJobDefinitionList",
               "Get-SMModelList",
               "Get-SMMonitoringExecutionList",
               "Get-SMMonitoringScheduleList",
               "Get-SMNotebookInstanceLifecycleConfigList",
               "Get-SMNotebookInstanceList",
               "Get-SMPipelineExecutionList",
               "Get-SMPipelineExecutionStepList",
               "Get-SMPipelineParametersForExecutionList",
               "Get-SMPipelineList",
               "Get-SMProcessingJobList",
               "Get-SMProjectList",
               "Get-SMStageDeviceList",
               "Get-SMStudioLifecycleConfigList",
               "Get-SMSubscribedWorkteamList",
               "Get-SMResourceTagList",
               "Get-SMTrainingJobList",
               "Get-SMTrainingJobsForHyperParameterTuningJobList",
               "Get-SMTransformJobList",
               "Get-SMTrialComponentList",
               "Get-SMTrialList",
               "Get-SMUserProfileList",
               "Get-SMWorkforceList",
               "Get-SMWorkteamList",
               "Write-SMModelPackageGroupPolicy",
               "Find-SMLineage",
               "Register-SMDevice",
               "Invoke-SMUiTemplateRendering",
               "Restart-SMPipelineExecution",
               "Search-SMResource",
               "Send-SMPipelineExecutionStepFailure",
               "Send-SMPipelineExecutionStepSuccess",
               "Start-SMEdgeDeploymentStage",
               "Start-SMMonitoringSchedule",
               "Start-SMNotebookInstance",
               "Start-SMPipelineExecution",
               "Stop-SMAutoMLJob",
               "Stop-SMCompilationJob",
               "Stop-SMEdgeDeploymentStage",
               "Stop-SMEdgePackagingJob",
               "Stop-SMHyperParameterTuningJob",
               "Stop-SMInferenceRecommendationsJob",
               "Stop-SMLabelingJob",
               "Stop-SMMonitoringSchedule",
               "Stop-SMNotebookInstance",
               "Stop-SMPipelineExecution",
               "Stop-SMProcessingJob",
               "Stop-SMTrainingJob",
               "Stop-SMTransformJob",
               "Update-SMAction",
               "Update-SMAppImageConfig",
               "Update-SMArtifact",
               "Update-SMCodeRepository",
               "Update-SMContext",
               "Update-SMDeviceFleet",
               "Update-SMDevice",
               "Update-SMDomain",
               "Update-SMEndpoint",
               "Update-SMEndpointWeightAndCapacity",
               "Update-SMExperiment",
               "Update-SMFeatureGroup",
               "Update-SMFeatureMetadata",
               "Update-SMImage",
               "Update-SMModelPackage",
               "Update-SMMonitoringSchedule",
               "Update-SMNotebookInstance",
               "Update-SMNotebookInstanceLifecycleConfig",
               "Update-SMPipeline",
               "Update-SMPipelineExecution",
               "Update-SMProject",
               "Update-SMTrainingJob",
               "Update-SMTrial",
               "Update-SMTrialComponent",
               "Update-SMUserProfile",
               "Update-SMWorkforce",
               "Update-SMWorkteam")
}

_awsArgumentCompleterRegistration $SM_SelectCompleters $SM_SelectMap


# SIG # Begin signature block
# MIIurgYJKoZIhvcNAQcCoIIunzCCLpsCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCBYEcwL+Nc/lPrO
# 6nImCO4ybcEfvpdPhbufNuWfSdalrqCCFB0wggXAMIIEqKADAgECAhAP0bvKeWvX
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
# HAYKKwYBBAGCNwIBCzEOMAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIJyP
# AXpg3g8uayoC2rNS2pHOUK4AQBfzJl13bhqIj+76MA0GCSqGSIb3DQEBAQUABIIB
# gAKApf6x168cvMjZJCu3Dl9jgHA9bSTjX8Wl3KU3xjUuzt2zh5lnW0tGI7DCcIo1
# Ee8ra/zKhSSbVibp/5qJw8vWAQ2d2yaDclk+sXJQ1uFdFGaS+nW6w0xcX+/Xndag
# kjdT8OlsX+QDufCzAr/Ei9q/ctqrHb100wGMyjf3X6Bfskanrmd3ugPId5pv0IqL
# FDpsc48i4HLvVtg0WHs3XXHfQzR9Gqnw0+6dZ6TlTRri+HD1ZEMruvSCoAcaWNrA
# p0wd6jq5fJ7aA1cfedfZpKzKVQjYk36ISo0vlDfA2A98vstO5hKHe9bU0NcL1SJJ
# fWnovjhUS0V0BEDzApzgdFzcMjghNbSzuZqak1ql6RwhK3T/ag8giLSHvY4dQeg/
# YqrqZqtiJg5/oK3BEoye9XqCPufQfnB2PQ5Ouu2v0eyjy+XSQMC2XkdMl1Wns3Ma
# 0lhck1vnpmqhnKKTlwZnt4thuavugpO+3hyIiA5UVdpMjQ7eNWapgoZkfjpFqWy+
# SKGCFz0wghc5BgorBgEEAYI3AwMBMYIXKTCCFyUGCSqGSIb3DQEHAqCCFxYwghcS
# AgEDMQ8wDQYJYIZIAWUDBAIBBQAwdwYLKoZIhvcNAQkQAQSgaARmMGQCAQEGCWCG
# SAGG/WwHATAxMA0GCWCGSAFlAwQCAQUABCBHFn83yLEUGxtTGy4CmjmUGD8KtWdT
# MbJXZn9EnbKQUQIQQbo+GGjwvjq9Dn/PSusTxhgPMjAyMjEwMjYyMTAzNDJaoIIT
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
# hkiG9w0BCRABBDAcBgkqhkiG9w0BCQUxDxcNMjIxMDI2MjEwMzQyWjArBgsqhkiG
# 9w0BCRACDDEcMBowGDAWBBTzhyJNhjOCkjWplLy9j5bp/hx8czAvBgkqhkiG9w0B
# CQQxIgQgdg0nMpualuyn2Cv7q4sYAWUlVwKun3aqbdMLSSSYcHkwNwYLKoZIhvcN
# AQkQAi8xKDAmMCQwIgQgx/ThvjIoiSCr4iY6vhrE/E/meBwtZNBMgHVXoCO1tvow
# DQYJKoZIhvcNAQEBBQAEggIApM/4Oko6sxUw82dyKhoZANDsK0MU6qdCKC6r8dn7
# N6z0LgvKD8WTlZNxbboNBcwAN6kQ/CV4sU8Eqr45q+v9j5AHFwOIP/YZEHV5rZS9
# tP5tXpIt8UdnYjUfKY2d/uqr2Ycc9QNbUwM9cUGDWelIpkneiLhpNYtJlHhlR44/
# B1KG4BSKPwiL6IduuRFhZ0okPhYduvqUG+whYd4Ybtnd/+XmOnaMp1CCMWd3Ibwa
# Ojkofu/hznbG+7W/c1cVvPLG7Nw9h2QOo1IzWIzcQnL+aWdhEfFOkx2L46eQ71F5
# HQZZZ72FdAbisEnDNcme8ZoOsVi13iWHE4Lk8Yos4PNfwB24EYrbkaTpBTw2f1i8
# 9hWqeyKFvwKB0XzFh8VKgXflidMibTudzitw20nvCAGbDYoAvwyI2cTHKEazUr4G
# 54d5xnKbkdW7cS13iHuWKIe9J4yzj4BAoYGq/CV8Om4CfQhc+dZddBMxmEHim6j8
# VGN8r7mAfDiKmE6CvvLnX5syyvbG1i7v++VYeUSNusH1PRZ4lwpO5VSw2CyOSmKh
# a+QLnYXDgJwZsTiov4oKiwDTt+mIQyw6SqZEH73VlT2+/F7isVsws4Tb8B9PzJ7s
# OAIk6JfYyjouqpoX8Kmi2b93c/bgKQ8sIru7thWq2rA1V02PEqtJDcrP7g58YQ2D
# GZI=
# SIG # End signature block
