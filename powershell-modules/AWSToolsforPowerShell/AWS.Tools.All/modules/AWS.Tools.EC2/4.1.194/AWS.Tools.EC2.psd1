#
# Module manifest for module 'AWS.Tools.EC2'
#

@{
    # Script module or binary module file associated with this manifest
    RootModule = 'AWS.Tools.EC2.dll'

    # Supported PSEditions
    CompatiblePSEditions = @('Core', 'Desktop')

    # Version number of this module.
    ModuleVersion = '4.1.194'

    # ID used to uniquely identify this module
    GUID = 'beb2445c-fd90-4fda-adf1-f8c955ce16dc'

    # Author of this module
    Author = 'Amazon.com, Inc'

    # Company or vendor of this module
    CompanyName = 'Amazon.com, Inc'

    # Copyright statement for this module
    Copyright = 'Copyright 2012-2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.'

    # Description of the functionality provided by this module
    Description = 'The EC2 module of AWS Tools for PowerShell lets developers and administrators manage Amazon Elastic Compute Cloud (EC2) from the PowerShell scripting environment. In order to manage each AWS service, install the corresponding module (e.g. AWS.Tools.EC2, AWS.Tools.S3...).
The module AWS.Tools.Installer (https://www.powershellgallery.com/packages/AWS.Tools.Installer/) makes it easier to install, update and uninstall the AWS.Tools modules.
This version of AWS Tools for PowerShell is compatible with Windows PowerShell 5.1+ and PowerShell Core 6+ on Windows, Linux and macOS. When running on Windows PowerShell, .NET Framework 4.7.2 or newer is required. Alternative modules AWSPowerShell.NetCore and AWSPowerShell, provide support for all AWS services from a single module and also support older versions of Windows PowerShell and .NET Framework.'

    # Minimum version of the PowerShell engine required by this module
    PowerShellVersion = '5.1'

    # Name of the PowerShell host required by this module
    PowerShellHostName = ''

    # Minimum version of the PowerShell host required by this module
    PowerShellHostVersion = ''

    # Minimum version of the .NET Framework required by this module
    DotNetFrameworkVersion = '4.7.2'

    # Minimum version of the common language runtime (CLR) required by this module
    CLRVersion = ''

    # Processor architecture (None, X86, Amd64, IA64) required by this module
    ProcessorArchitecture = ''

    # Modules that must be imported into the global environment prior to importing this module
    RequiredModules = @(
        @{
            ModuleName = 'AWS.Tools.Common';
            RequiredVersion = '4.1.194';
            Guid = 'e5b05bf3-9eee-47b2-81f2-41ddc0501b86' }
    )

    # Assemblies that must be loaded prior to importing this module.
    RequiredAssemblies = @(
        'AWSSDK.EC2.dll'
    )

    # Script files (.ps1) that are run in the caller's environment prior to importing this module
    ScriptsToProcess = @(

    )

    # Type files (.ps1xml) to be loaded when importing this module
    TypesToProcess = @(

    )

    # Format files (.ps1xml) to be loaded when importing this module
    FormatsToProcess = @(
        'AWS.Tools.EC2.Format.ps1xml'
    )

    # Modules to import as nested modules of the module specified in ModuleToProcess
    NestedModules = @(
        'AWS.Tools.EC2.Completers.psm1',
        'AWS.Tools.EC2.Aliases.psm1'
    )

    # Functions to export from this module
    FunctionsToExport = ''

    # Cmdlets to export from this module
    CmdletsToExport = @(
        'Add-EC2CapacityReservation', 
        'Add-EC2ClassicLinkVpc', 
        'Add-EC2InternetGateway', 
        'Add-EC2NetworkInterface', 
        'Add-EC2SecurityGroupToClientVpnTargetNetwork', 
        'Add-EC2Volume', 
        'Add-EC2VpnGateway', 
        'Approve-EC2EndpointConnection', 
        'Approve-EC2ReservedInstancesExchangeQuote', 
        'Approve-EC2TransitGatewayMulticastDomainAssociation', 
        'Approve-EC2TransitGatewayPeeringAttachment', 
        'Approve-EC2TransitGatewayVpcAttachment', 
        'Approve-EC2VpcPeeringConnection', 
        'Confirm-EC2ProductInstance', 
        'Copy-EC2FpgaImage', 
        'Copy-EC2Image', 
        'Copy-EC2Snapshot', 
        'Deny-EC2EndpointConnection', 
        'Deny-EC2TransitGatewayMulticastDomainAssociation', 
        'Deny-EC2TransitGatewayPeeringAttachment', 
        'Deny-EC2TransitGatewayVpcAttachment', 
        'Deny-EC2VpcPeeringConnection', 
        'Disable-EC2EbsEncryptionByDefault', 
        'Disable-EC2FastLaunch', 
        'Disable-EC2FastSnapshotRestore', 
        'Disable-EC2ImageDeprecation', 
        'Disable-EC2IpamOrganizationAdminAccount', 
        'Disable-EC2SerialConsoleAccess', 
        'Disable-EC2TransitGatewayRouteTablePropagation', 
        'Disable-EC2VgwRoutePropagation', 
        'Disable-EC2VpcClassicLink', 
        'Disable-EC2VpcClassicLinkDnsSupport', 
        'Dismount-EC2ClassicLinkVpc', 
        'Dismount-EC2InternetGateway', 
        'Dismount-EC2NetworkInterface', 
        'Dismount-EC2Volume', 
        'Dismount-EC2VpnGateway', 
        'Edit-EC2AddressAttribute', 
        'Edit-EC2AvailabilityZoneGroup', 
        'Edit-EC2CapacityReservation', 
        'Edit-EC2CapacityReservationFleet', 
        'Edit-EC2ClientVpnEndpoint', 
        'Edit-EC2DefaultCreditSpecification', 
        'Edit-EC2EbsDefaultKmsKeyId', 
        'Edit-EC2EndpointServicePermission', 
        'Edit-EC2Fleet', 
        'Edit-EC2FpgaImageAttribute', 
        'Edit-EC2Host', 
        'Edit-EC2IdentityIdFormat', 
        'Edit-EC2IdFormat', 
        'Edit-EC2ImageAttribute', 
        'Edit-EC2InstanceAttribute', 
        'Edit-EC2InstanceCapacityReservationAttribute', 
        'Edit-EC2InstanceCreditSpecification', 
        'Edit-EC2InstanceEventStartTime', 
        'Edit-EC2InstanceEventWindow', 
        'Edit-EC2InstanceMaintenanceOption', 
        'Edit-EC2InstanceMetadataOption', 
        'Edit-EC2InstancePlacement', 
        'Edit-EC2Ipam', 
        'Edit-EC2IpamPool', 
        'Edit-EC2IpamResourceCidr', 
        'Edit-EC2IpamScope', 
        'Edit-EC2LaunchTemplate', 
        'Edit-EC2LocalGatewayRoute', 
        'Edit-EC2ManagedPrefixList', 
        'Edit-EC2NetworkInterfaceAttribute', 
        'Edit-EC2PrivateDnsNameOption', 
        'Edit-EC2ReservedInstance', 
        'Edit-EC2SecurityGroupRule', 
        'Edit-EC2SnapshotAttribute', 
        'Edit-EC2SnapshotTier', 
        'Edit-EC2SpotFleetRequest', 
        'Edit-EC2SubnetAttribute', 
        'Edit-EC2TrafficMirrorFilterNetworkService', 
        'Edit-EC2TrafficMirrorFilterRule', 
        'Edit-EC2TrafficMirrorSession', 
        'Edit-EC2TransitGateway', 
        'Edit-EC2TransitGatewayPrefixListReference', 
        'Edit-EC2TransitGatewayVpcAttachment', 
        'Edit-EC2Volume', 
        'Edit-EC2VolumeAttribute', 
        'Edit-EC2VpcAttribute', 
        'Edit-EC2VpcEndpoint', 
        'Edit-EC2VpcEndpointConnectionNotification', 
        'Edit-EC2VpcEndpointServiceConfiguration', 
        'Edit-EC2VpcEndpointServicePayerResponsibility', 
        'Edit-EC2VpcPeeringConnectionOption', 
        'Edit-EC2VpcTenancy', 
        'Edit-EC2VpnConnection', 
        'Edit-EC2VpnConnectionOption', 
        'Edit-EC2VpnTunnelCertificate', 
        'Edit-EC2VpnTunnelOption', 
        'Enable-EC2EbsEncryptionByDefault', 
        'Enable-EC2FastLaunch', 
        'Enable-EC2FastSnapshotRestore', 
        'Enable-EC2ImageDeprecation', 
        'Enable-EC2IpamOrganizationAdminAccount', 
        'Enable-EC2SerialConsoleAccess', 
        'Enable-EC2TransitGatewayRouteTablePropagation', 
        'Enable-EC2VgwRoutePropagation', 
        'Enable-EC2VolumeIO', 
        'Enable-EC2VpcClassicLink', 
        'Enable-EC2VpcClassicLinkDnsSupport', 
        'Export-EC2ClientVpnClientCertificateRevocationList', 
        'Export-EC2ClientVpnClientConfiguration', 
        'Export-EC2Image', 
        'Export-EC2TransitGatewayRoute', 
        'Get-EC2AccountAttribute', 
        'Get-EC2Address', 
        'Get-EC2AddressesAttribute', 
        'Get-EC2AggregateIdFormat', 
        'Get-EC2AssociatedEnclaveCertificateIamRole', 
        'Get-EC2AssociatedIpv6PoolCidr', 
        'Get-EC2AvailabilityZone', 
        'Get-EC2BundleTask', 
        'Get-EC2ByoipCidr', 
        'Get-EC2CapacityReservation', 
        'Get-EC2CapacityReservationFleet', 
        'Get-EC2CapacityReservationUsage', 
        'Get-EC2CarrierGateway', 
        'Get-EC2ClassicLinkInstance', 
        'Get-EC2ClientVpnAuthorizationRule', 
        'Get-EC2ClientVpnConnection', 
        'Get-EC2ClientVpnEndpoint', 
        'Get-EC2ClientVpnRoute', 
        'Get-EC2ClientVpnTargetNetwork', 
        'Get-EC2CoipPool', 
        'Get-EC2CoipPoolUsage', 
        'Get-EC2ConsoleOutput', 
        'Get-EC2ConsoleScreenshot', 
        'Get-EC2CreditSpecification', 
        'Get-EC2CustomerGateway', 
        'Get-EC2DefaultCreditSpecification', 
        'Get-EC2DhcpOption', 
        'Get-EC2EbsDefaultKmsKeyId', 
        'Get-EC2EbsEncryptionByDefault', 
        'Get-EC2EgressOnlyInternetGatewayList', 
        'Get-EC2ElasticGpu', 
        'Get-EC2EndpointConnection', 
        'Get-EC2EndpointConnectionNotification', 
        'Get-EC2EndpointServiceConfiguration', 
        'Get-EC2EndpointServicePermission', 
        'Get-EC2ExportImageTask', 
        'Get-EC2ExportTask', 
        'Get-EC2FastLaunchImage', 
        'Get-EC2FastSnapshotRestore', 
        'Get-EC2FleetHistory', 
        'Get-EC2FleetInstanceList', 
        'Get-EC2FleetList', 
        'Get-EC2FlowLog', 
        'Get-EC2FlowLogsIntegrationTemplate', 
        'Get-EC2FpgaImage', 
        'Get-EC2FpgaImageAttribute', 
        'Get-EC2GroupsForCapacityReservation', 
        'Get-EC2Host', 
        'Get-EC2HostReservation', 
        'Get-EC2HostReservationOffering', 
        'Get-EC2HostReservationPurchasePreview', 
        'Get-EC2IamInstanceProfileAssociation', 
        'Get-EC2IdentityIdFormat', 
        'Get-EC2IdFormat', 
        'Get-EC2Image', 
        'Get-EC2ImageAttribute', 
        'Get-EC2ImageByName', 
        'Get-EC2ImagesInRecycleBinList', 
        'Get-EC2ImportImageTask', 
        'Get-EC2ImportSnapshotTask', 
        'Get-EC2Instance', 
        'Get-EC2InstanceAttribute', 
        'Get-EC2InstanceEventNotificationAttribute', 
        'Get-EC2InstanceEventWindow', 
        'Get-EC2InstanceMetadata', 
        'Get-EC2InstanceStatus', 
        'Get-EC2InstanceType', 
        'Get-EC2InstanceTypeOffering', 
        'Get-EC2InstanceTypesFromInstanceRequirement', 
        'Get-EC2InstanceUefiData', 
        'Get-EC2InternetGateway', 
        'Get-EC2Ipam', 
        'Get-EC2IpamAddressHistory', 
        'Get-EC2IpamPool', 
        'Get-EC2IpamPoolAllocation', 
        'Get-EC2IpamPoolCidr', 
        'Get-EC2IpamResourceCidr', 
        'Get-EC2IpamScope', 
        'Get-EC2Ipv6Pool', 
        'Get-EC2KeyPair', 
        'Get-EC2LaunchTemplateData', 
        'Get-EC2LocalGateway', 
        'Get-EC2LocalGatewayRouteTable', 
        'Get-EC2LocalGatewayRouteTableVirtualInterfaceGroupAssociation', 
        'Get-EC2LocalGatewayRouteTableVpcAssociation', 
        'Get-EC2LocalGatewayVirtualInterface', 
        'Get-EC2LocalGatewayVirtualInterfaceGroup', 
        'Get-EC2ManagedPrefixList', 
        'Get-EC2ManagedPrefixListAssociation', 
        'Get-EC2ManagedPrefixListEntry', 
        'Get-EC2MovingAddress', 
        'Get-EC2NatGateway', 
        'Get-EC2NetworkAcl', 
        'Get-EC2NetworkInsightsAccessScope', 
        'Get-EC2NetworkInsightsAccessScopeAnalysis', 
        'Get-EC2NetworkInsightsAccessScopeAnalysisFinding', 
        'Get-EC2NetworkInsightsAccessScopeContent', 
        'Get-EC2NetworkInsightsAnalysis', 
        'Get-EC2NetworkInsightsPath', 
        'Get-EC2NetworkInterface', 
        'Get-EC2NetworkInterfaceAttribute', 
        'Get-EC2NetworkInterfacePermission', 
        'Get-EC2PasswordData', 
        'Get-EC2PlacementGroup', 
        'Get-EC2PrefixList', 
        'Get-EC2PrincipalIdFormat', 
        'Get-EC2PublicIpv4Pool', 
        'Get-EC2Region', 
        'Get-EC2ReplaceRootVolumeTask', 
        'Get-EC2ReservedInstance', 
        'Get-EC2ReservedInstancesExchangeQuote', 
        'Get-EC2ReservedInstancesListing', 
        'Get-EC2ReservedInstancesModification', 
        'Get-EC2ReservedInstancesOffering', 
        'Get-EC2RouteTable', 
        'Get-EC2ScheduledInstance', 
        'Get-EC2ScheduledInstanceAvailability', 
        'Get-EC2SecurityGroup', 
        'Get-EC2SecurityGroupReference', 
        'Get-EC2SecurityGroupRule', 
        'Get-EC2SerialConsoleAccessStatus', 
        'Get-EC2Snapshot', 
        'Get-EC2SnapshotAttribute', 
        'Get-EC2SnapshotsInRecycleBinList', 
        'Get-EC2SnapshotTierStatus', 
        'Get-EC2SpotDatafeedSubscription', 
        'Get-EC2SpotFleetInstance', 
        'Get-EC2SpotFleetRequest', 
        'Get-EC2SpotFleetRequestHistory', 
        'Get-EC2SpotInstanceRequest', 
        'Get-EC2SpotPlacementScore', 
        'Get-EC2SpotPriceHistory', 
        'Get-EC2StaleSecurityGroup', 
        'Get-EC2StoreImageTask', 
        'Get-EC2Subnet', 
        'Get-EC2SubnetCidrReservation', 
        'Get-EC2Tag', 
        'Get-EC2Template', 
        'Get-EC2TemplateVersion', 
        'Get-EC2TrafficMirrorFilter', 
        'Get-EC2TrafficMirrorSession', 
        'Get-EC2TrafficMirrorTarget', 
        'Get-EC2TransitGateway', 
        'Get-EC2TransitGatewayAttachment', 
        'Get-EC2TransitGatewayAttachmentPropagation', 
        'Get-EC2TransitGatewayConnect', 
        'Get-EC2TransitGatewayConnectPeer', 
        'Get-EC2TransitGatewayMulticastDomain', 
        'Get-EC2TransitGatewayMulticastDomainAssociation', 
        'Get-EC2TransitGatewayPeeringAttachment', 
        'Get-EC2TransitGatewayPolicyTable', 
        'Get-EC2TransitGatewayPolicyTableAssociation', 
        'Get-EC2TransitGatewayPolicyTableEntry', 
        'Get-EC2TransitGatewayPrefixListReference', 
        'Get-EC2TransitGatewayRouteTable', 
        'Get-EC2TransitGatewayRouteTableAnnouncement', 
        'Get-EC2TransitGatewayRouteTableAssociation', 
        'Get-EC2TransitGatewayRouteTablePropagation', 
        'Get-EC2TransitGatewayVpcAttachment', 
        'Get-EC2TrunkInterfaceAssociation', 
        'Get-EC2Volume', 
        'Get-EC2VolumeAttribute', 
        'Get-EC2VolumeModification', 
        'Get-EC2VolumeStatus', 
        'Get-EC2Vpc', 
        'Get-EC2VpcAttribute', 
        'Get-EC2VpcClassicLink', 
        'Get-EC2VpcClassicLinkDnsSupport', 
        'Get-EC2VpcEndpoint', 
        'Get-EC2VpcEndpointService', 
        'Get-EC2VpcPeeringConnection', 
        'Get-EC2VpnConnection', 
        'Get-EC2VpnConnectionDeviceSampleConfiguration', 
        'Get-EC2VpnConnectionDeviceType', 
        'Get-EC2VpnGateway', 
        'Grant-EC2ClientVpnIngress', 
        'Grant-EC2SecurityGroupEgress', 
        'Grant-EC2SecurityGroupIngress', 
        'Import-EC2ClientVpnClientCertificateRevocationList', 
        'Import-EC2Image', 
        'Import-EC2KeyPair', 
        'Import-EC2Snapshot', 
        'Move-EC2AddressToVpc', 
        'Move-EC2ByoipCidrToIpam', 
        'New-EC2Address', 
        'New-EC2CapacityReservationFleet', 
        'New-EC2CarrierGateway', 
        'New-EC2ClientVpnEndpoint', 
        'New-EC2ClientVpnRoute', 
        'New-EC2CoipCidr', 
        'New-EC2CoipPool', 
        'New-EC2CustomerGateway', 
        'New-EC2DefaultSubnet', 
        'New-EC2DefaultVpc', 
        'New-EC2DhcpOption', 
        'New-EC2EgressOnlyInternetGateway', 
        'New-EC2Fleet', 
        'New-EC2FlowLog', 
        'New-EC2FpgaImage', 
        'New-EC2Host', 
        'New-EC2HostReservation', 
        'New-EC2Image', 
        'New-EC2Instance', 
        'New-EC2InstanceBundle', 
        'New-EC2InstanceEventWindow', 
        'New-EC2InstanceExportTask', 
        'New-EC2InternetGateway', 
        'New-EC2Ipam', 
        'New-EC2IpamPool', 
        'New-EC2IpamPoolCidr', 
        'New-EC2IpamScope', 
        'New-EC2KeyPair', 
        'New-EC2LaunchTemplate', 
        'New-EC2LaunchTemplateVersion', 
        'New-EC2LocalGatewayRoute', 
        'New-EC2LocalGatewayRouteTable', 
        'New-EC2LocalGatewayRouteTableVirtualInterfaceGroupAssociation', 
        'New-EC2LocalGatewayRouteTableVpcAssociation', 
        'New-EC2ManagedPrefixList', 
        'New-EC2NatGateway', 
        'New-EC2NetworkAcl', 
        'New-EC2NetworkAclEntry', 
        'New-EC2NetworkInsightsAccessScope', 
        'New-EC2NetworkInsightsPath', 
        'New-EC2NetworkInterface', 
        'New-EC2NetworkInterfacePermission', 
        'New-EC2PlacementGroup', 
        'New-EC2PublicIpv4Pool', 
        'New-EC2ReplaceRootVolumeTask', 
        'New-EC2ReservedInstance', 
        'New-EC2ReservedInstancesListing', 
        'New-EC2RestoreImageTask', 
        'New-EC2Route', 
        'New-EC2RouteTable', 
        'New-EC2ScheduledInstance', 
        'New-EC2ScheduledInstancePurchase', 
        'New-EC2SecurityGroup', 
        'New-EC2Snapshot', 
        'New-EC2SnapshotBatch', 
        'New-EC2SpotDatafeedSubscription', 
        'New-EC2StoreImageTask', 
        'New-EC2Subnet', 
        'New-EC2SubnetCidrReservation', 
        'New-EC2Tag', 
        'New-EC2TrafficMirrorFilter', 
        'New-EC2TrafficMirrorFilterRule', 
        'New-EC2TrafficMirrorSession', 
        'New-EC2TrafficMirrorTarget', 
        'New-EC2TransitGateway', 
        'New-EC2TransitGatewayConnect', 
        'New-EC2TransitGatewayConnectPeer', 
        'New-EC2TransitGatewayMulticastDomain', 
        'New-EC2TransitGatewayPeeringAttachment', 
        'New-EC2TransitGatewayPolicyTable', 
        'New-EC2TransitGatewayPrefixListReference', 
        'New-EC2TransitGatewayRoute', 
        'New-EC2TransitGatewayRouteTable', 
        'New-EC2TransitGatewayRouteTableAnnouncement', 
        'New-EC2TransitGatewayVpcAttachment', 
        'New-EC2Volume', 
        'New-EC2Vpc', 
        'New-EC2VpcEndpoint', 
        'New-EC2VpcEndpointConnectionNotification', 
        'New-EC2VpcEndpointServiceConfiguration', 
        'New-EC2VpcPeeringConnection', 
        'New-EC2VpnConnection', 
        'New-EC2VpnConnectionRoute', 
        'New-EC2VpnGateway', 
        'Register-EC2Address', 
        'Register-EC2ByoipCidr', 
        'Register-EC2ClientVpnTargetNetwork', 
        'Register-EC2DhcpOption', 
        'Register-EC2EnclaveCertificateIamRole', 
        'Register-EC2IamInstanceProfile', 
        'Register-EC2Image', 
        'Register-EC2InstanceEventNotificationAttribute', 
        'Register-EC2InstanceEventWindow', 
        'Register-EC2IpamPoolCidr', 
        'Register-EC2Ipv6AddressList', 
        'Register-EC2PrivateIpAddress', 
        'Register-EC2PublicIpv4PoolCidr', 
        'Register-EC2RouteTable', 
        'Register-EC2SubnetCidrBlock', 
        'Register-EC2TransitGatewayMulticastDomain', 
        'Register-EC2TransitGatewayMulticastGroupMember', 
        'Register-EC2TransitGatewayMulticastGroupSource', 
        'Register-EC2TransitGatewayPolicyTable', 
        'Register-EC2TransitGatewayRouteTable', 
        'Register-EC2TrunkInterface', 
        'Register-EC2VpcCidrBlock', 
        'Remove-EC2Address', 
        'Remove-EC2CapacityReservation', 
        'Remove-EC2CarrierGateway', 
        'Remove-EC2ClientVpnEndpoint', 
        'Remove-EC2ClientVpnRoute', 
        'Remove-EC2CoipCidr', 
        'Remove-EC2CoipPool', 
        'Remove-EC2CustomerGateway', 
        'Remove-EC2DhcpOption', 
        'Remove-EC2EgressOnlyInternetGateway', 
        'Remove-EC2EndpointConnectionNotification', 
        'Remove-EC2EndpointServiceConfiguration', 
        'Remove-EC2Fleet', 
        'Remove-EC2FlowLog', 
        'Remove-EC2FpgaImage', 
        'Remove-EC2Host', 
        'Remove-EC2Instance', 
        'Remove-EC2InstanceEventWindow', 
        'Remove-EC2InternetGateway', 
        'Remove-EC2Ipam', 
        'Remove-EC2IpamPool', 
        'Remove-EC2IpamPoolAllocation', 
        'Remove-EC2IpamScope', 
        'Remove-EC2KeyPair', 
        'Remove-EC2LaunchTemplate', 
        'Remove-EC2LocalGatewayRoute', 
        'Remove-EC2LocalGatewayRouteTable', 
        'Remove-EC2LocalGatewayRouteTableVirtualInterfaceGroupAssociation', 
        'Remove-EC2LocalGatewayRouteTableVpcAssociation', 
        'Remove-EC2ManagedPrefixList', 
        'Remove-EC2NatGateway', 
        'Remove-EC2NetworkAcl', 
        'Remove-EC2NetworkAclEntry', 
        'Remove-EC2NetworkInsightsAccessScope', 
        'Remove-EC2NetworkInsightsAccessScopeAnalysis', 
        'Remove-EC2NetworkInsightsAnalysis', 
        'Remove-EC2NetworkInsightsPath', 
        'Remove-EC2NetworkInterface', 
        'Remove-EC2NetworkInterfacePermission', 
        'Remove-EC2PlacementGroup', 
        'Remove-EC2PublicIpv4Pool', 
        'Remove-EC2QueuedReservedInstance', 
        'Remove-EC2Route', 
        'Remove-EC2RouteTable', 
        'Remove-EC2SecurityGroup', 
        'Remove-EC2Snapshot', 
        'Remove-EC2SpotDatafeedSubscription', 
        'Remove-EC2Subnet', 
        'Remove-EC2SubnetCidrReservation', 
        'Remove-EC2Tag', 
        'Remove-EC2TemplateVersion', 
        'Remove-EC2TrafficMirrorFilter', 
        'Remove-EC2TrafficMirrorFilterRule', 
        'Remove-EC2TrafficMirrorSession', 
        'Remove-EC2TrafficMirrorTarget', 
        'Remove-EC2TransitGateway', 
        'Remove-EC2TransitGatewayConnect', 
        'Remove-EC2TransitGatewayConnectPeer', 
        'Remove-EC2TransitGatewayMulticastDomain', 
        'Remove-EC2TransitGatewayPeeringAttachment', 
        'Remove-EC2TransitGatewayPolicyTable', 
        'Remove-EC2TransitGatewayPrefixListReference', 
        'Remove-EC2TransitGatewayRoute', 
        'Remove-EC2TransitGatewayRouteTable', 
        'Remove-EC2TransitGatewayRouteTableAnnouncement', 
        'Remove-EC2TransitGatewayVpcAttachment', 
        'Remove-EC2Volume', 
        'Remove-EC2Vpc', 
        'Remove-EC2VpcEndpoint', 
        'Remove-EC2VpcPeeringConnection', 
        'Remove-EC2VpnConnection', 
        'Remove-EC2VpnConnectionRoute', 
        'Remove-EC2VpnGateway', 
        'Request-EC2SpotFleet', 
        'Request-EC2SpotInstance', 
        'Reset-EC2AddressAttribute', 
        'Reset-EC2EbsDefaultKmsKeyId', 
        'Reset-EC2FpgaImageAttribute', 
        'Reset-EC2ImageAttribute', 
        'Reset-EC2InstanceAttribute', 
        'Reset-EC2NetworkInterfaceAttribute', 
        'Reset-EC2SnapshotAttribute', 
        'Restart-EC2Instance', 
        'Restore-EC2AddressToClassic', 
        'Restore-EC2ImageFromRecycleBin', 
        'Restore-EC2ManagedPrefixListVersion', 
        'Restore-EC2SnapshotFromRecycleBin', 
        'Restore-EC2SnapshotTier', 
        'Revoke-EC2ClientVpnIngress', 
        'Revoke-EC2SecurityGroupEgress', 
        'Revoke-EC2SecurityGroupIngress', 
        'Search-EC2LocalGatewayRoute', 
        'Search-EC2TransitGatewayMulticastGroup', 
        'Search-EC2TransitGatewayRoute', 
        'Send-EC2DiagnosticInterrupt', 
        'Send-EC2InstanceStatus', 
        'Set-EC2IamInstanceProfileAssociation', 
        'Set-EC2NetworkAclAssociation', 
        'Set-EC2NetworkAclEntry', 
        'Set-EC2Route', 
        'Set-EC2RouteTableAssociation', 
        'Set-EC2TransitGatewayRoute', 
        'Start-EC2ByoipCidrAdvertisement', 
        'Start-EC2Instance', 
        'Start-EC2InstanceMonitoring', 
        'Start-EC2NetworkInsightsAccessScopeAnalysis', 
        'Start-EC2NetworkInsightsAnalysis', 
        'Start-EC2VpcEndpointServicePrivateDnsVerification', 
        'Stop-EC2BundleTask', 
        'Stop-EC2ByoipCidrAdvertisement', 
        'Stop-EC2CapacityReservationFleet', 
        'Stop-EC2ClientVpnConnection', 
        'Stop-EC2ExportTask', 
        'Stop-EC2ImportTask', 
        'Stop-EC2Instance', 
        'Stop-EC2InstanceMonitoring', 
        'Stop-EC2ReservedInstancesListing', 
        'Stop-EC2SpotFleetRequest', 
        'Stop-EC2SpotInstanceRequest', 
        'Unregister-EC2Address', 
        'Unregister-EC2ByoipCidr', 
        'Unregister-EC2ClientVpnTargetNetwork', 
        'Unregister-EC2EnclaveCertificateIamRole', 
        'Unregister-EC2IamInstanceProfile', 
        'Unregister-EC2Image', 
        'Unregister-EC2InstanceEventNotificationAttribute', 
        'Unregister-EC2InstanceEventWindow', 
        'Unregister-EC2IpamPoolCidr', 
        'Unregister-EC2Ipv6AddressList', 
        'Unregister-EC2PrivateIpAddress', 
        'Unregister-EC2PublicIpv4PoolCidr', 
        'Unregister-EC2RouteTable', 
        'Unregister-EC2SubnetCidrBlock', 
        'Unregister-EC2TransitGatewayMulticastDomain', 
        'Unregister-EC2TransitGatewayMulticastGroupMember', 
        'Unregister-EC2TransitGatewayMulticastGroupSource', 
        'Unregister-EC2TransitGatewayPolicyTable', 
        'Unregister-EC2TransitGatewayRouteTable', 
        'Unregister-EC2TrunkInterface', 
        'Unregister-EC2VpcCidrBlock', 
        'Update-EC2SecurityGroupRuleEgressDescription', 
        'Update-EC2SecurityGroupRuleIngressDescription')

    # Variables to export from this module
    VariablesToExport = '*'

    # Aliases to export from this module
    AliasesToExport = @(
        'Confirm-EC2ReservedInstancesExchangeQuote', 
        'Confirm-EC2TransitGatewayPeeringAttachment', 
        'Confirm-EC2TransitGatewayVpcAttachment', 
        'Confirm-EC2EndpointConnection', 
        'Confirm-EC2VpcPeeringConnection', 
        'New-EC2Hosts', 
        'New-EC2FlowLogs', 
        'Remove-EC2FlowLogs', 
        'Get-EC2AccountAttributes', 
        'Get-EC2ExportTasks', 
        'Get-EC2FlowLogs', 
        'Get-EC2Hosts', 
        'Get-EC2ReservedInstancesModifications', 
        'Get-EC2Snapshots', 
        'Get-EC2VpcPeeringConnections', 
        'Edit-EC2Hosts', 
        'ReleaseHosts')

    # List of all modules packaged with this module
    ModuleList = @()

    # List of all files packaged with this module
    FileList = @(
        'AWS.Tools.EC2.dll-Help.xml'
    )

    # Private data to pass to the module specified in ModuleToProcess
    PrivateData = @{

        PSData = @{
            Tags = @('AWS', 'cloud', 'Windows', 'PSEdition_Desktop', 'PSEdition_Core', 'Linux', 'MacOS', 'Mac')
            LicenseUri = 'https://aws.amazon.com/apache-2-0/'
            ProjectUri = 'https://github.com/aws/aws-tools-for-powershell'
            IconUri = 'https://sdk-for-net.amazonwebservices.com/images/AWSLogo128x128.png'
            ReleaseNotes = 'https://github.com/aws/aws-tools-for-powershell/blob/master/CHANGELOG.md'
        }
    }
}

# SIG # Begin signature block
# MIIurgYJKoZIhvcNAQcCoIIunzCCLpsCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCBAZXe+eCCmuzTD
# LDfpHWElnjtX9sMTqMIHHI0wEc0636CCFB0wggXAMIIEqKADAgECAhAP0bvKeWvX
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
# HAYKKwYBBAGCNwIBCzEOMAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIHIw
# 8C7v2x0gXtdNdoKQDQ4t0bdtGp9IBh9jNp0Mpj1XMA0GCSqGSIb3DQEBAQUABIIB
# gGIKfulmlk9ePq4UzAoGU+Fbj/HS0Y4yk/xaDO/lXa2HC0D35AMA114BtIfipY1K
# EK+UAtNkoc6Exi0ISRr1Qjj+5a8ktR/RDwKCYelnrYLy+P3Zv4bJ3H1PFstwQAZ8
# mnGlubu+9GT8UFkPBLHylMVDBHR9OwK30Qb4AIx+cuqesb4IZu+snaV0kuQ6fehf
# 8DbUipnjzJdjz6nyrvfCq2yx3IJJu6yXKqCwHtYFXT0tMr9ogZGZo9HpFKsBj06A
# MxP4tZyXJIUvCRvVwNJPxJGZE2sACThZpE6F3YeKOyuko319zY9RP7NpT+DQ1vRt
# s6LECPgRsvp1OjvcosqHQwAZuFbt0xZjkYggseGvF/D/+GGc++2yMeU0EVm2LRWl
# ovnh9auiZgMaTnoZ35CnLZgQsYYx11VPPjaipEPQC6EBT0q9mHNlTqgfjNZHafpX
# Ii88mx2Tq0sDq9bsi6g2s8Sptt40EMgdKLPzFB+wWzVhCyzVaTCbcxjVoOd9xGOm
# 0KGCFz0wghc5BgorBgEEAYI3AwMBMYIXKTCCFyUGCSqGSIb3DQEHAqCCFxYwghcS
# AgEDMQ8wDQYJYIZIAWUDBAIBBQAwdwYLKoZIhvcNAQkQAQSgaARmMGQCAQEGCWCG
# SAGG/WwHATAxMA0GCWCGSAFlAwQCAQUABCDWL8z4lcBntNVc4mFzsK15+kG70EDT
# BKKFUVjULNJDjgIQVJHRLW/wnt/K86wfaSlENRgPMjAyMjEwMjYyMTAzMzNaoIIT
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
# hkiG9w0BCRABBDAcBgkqhkiG9w0BCQUxDxcNMjIxMDI2MjEwMzMzWjArBgsqhkiG
# 9w0BCRACDDEcMBowGDAWBBTzhyJNhjOCkjWplLy9j5bp/hx8czAvBgkqhkiG9w0B
# CQQxIgQgBH0lL4f2AHxee2abwPETxlaKP1aqgpCQ38Y7QnTo9BQwNwYLKoZIhvcN
# AQkQAi8xKDAmMCQwIgQgx/ThvjIoiSCr4iY6vhrE/E/meBwtZNBMgHVXoCO1tvow
# DQYJKoZIhvcNAQEBBQAEggIADNSULlhC0BxbFk53F/9QP4CmDR6kzeZ1ecdyTHzl
# isH0ADPYCAVUqo6PEUoSnkA2EXZoKcqWJPyIXicmN+c5JhQVTgmeooNpeOpDanFA
# BR9UIwtavLc3v7uJihWaypinH5BC96EyD4aFne7bhqLbUYU+OsojiHFIP++f55BM
# IF3DviGO230DPFQ3OY2rJPMNIlCWAy/Nfpa0dCovd6UKsoXWLwjXkOU3oR/gD1CC
# 71VVktO1rPY78zEs67GoG3r+aW8m1U9HNGQOKmotBOy8HZ42mdw/nB6IkjnOHArS
# d6VP+oFrXYYMABTjIsNLUrGANZlVyQ/47WV2AxPy4wKz+IwoJ/Ha/WKtqPZHGiDx
# qjSE7hwJnRAfuQAIUl/Fy5uDFhcoW+q7Bv3wovot2eCADH9lJ1OsheehOBgIdtPI
# 0bA8dwgG4kr5bfnSgwjugQCAYg5OSgm/OHpuGXvQBuG9srEV+hv3TG/lUCBNMNF2
# KeoZ6KscGy+uv79pIbJOIkWAP9FPQanpyb50CandkVC2ZJ40IXAiAiym3+KkEav9
# tGmcztgMCEOB6bAXPzLDZBy1lkoO/ocEj0VADkGNkAWVLvkkFB2gpX7wu6LYvEOM
# HzH8ZTMg1IAWIOIR4uekvM6i/yspx2qaO4jxG2mV9Eh+YC9ZOoj6kBgEXpp5XUUS
# 1ig=
# SIG # End signature block
