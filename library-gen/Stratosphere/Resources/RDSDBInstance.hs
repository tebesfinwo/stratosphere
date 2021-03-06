{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html

module Stratosphere.Resources.RDSDBInstance where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.RDSDBInstanceProcessorFeature
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for RDSDBInstance. See 'rdsdbInstance' for a
-- more convenient constructor.
data RDSDBInstance =
  RDSDBInstance
  { _rDSDBInstanceAllocatedStorage :: Maybe (Val Text)
  , _rDSDBInstanceAllowMajorVersionUpgrade :: Maybe (Val Bool)
  , _rDSDBInstanceAutoMinorVersionUpgrade :: Maybe (Val Bool)
  , _rDSDBInstanceAvailabilityZone :: Maybe (Val Text)
  , _rDSDBInstanceBackupRetentionPeriod :: Maybe (Val Text)
  , _rDSDBInstanceCharacterSetName :: Maybe (Val Text)
  , _rDSDBInstanceCopyTagsToSnapshot :: Maybe (Val Bool)
  , _rDSDBInstanceDBClusterIdentifier :: Maybe (Val Text)
  , _rDSDBInstanceDBInstanceClass :: Val Text
  , _rDSDBInstanceDBInstanceIdentifier :: Maybe (Val Text)
  , _rDSDBInstanceDBName :: Maybe (Val Text)
  , _rDSDBInstanceDBParameterGroupName :: Maybe (Val Text)
  , _rDSDBInstanceDBSecurityGroups :: Maybe (ValList Text)
  , _rDSDBInstanceDBSnapshotIdentifier :: Maybe (Val Text)
  , _rDSDBInstanceDBSubnetGroupName :: Maybe (Val Text)
  , _rDSDBInstanceDeleteAutomatedBackups :: Maybe (Val Bool)
  , _rDSDBInstanceDeletionProtection :: Maybe (Val Bool)
  , _rDSDBInstanceDomain :: Maybe (Val Text)
  , _rDSDBInstanceDomainIAMRoleName :: Maybe (Val Text)
  , _rDSDBInstanceEnableCloudwatchLogsExports :: Maybe (ValList Text)
  , _rDSDBInstanceEnableIAMDatabaseAuthentication :: Maybe (Val Bool)
  , _rDSDBInstanceEnablePerformanceInsights :: Maybe (Val Bool)
  , _rDSDBInstanceEngine :: Maybe (Val Text)
  , _rDSDBInstanceEngineVersion :: Maybe (Val Text)
  , _rDSDBInstanceIops :: Maybe (Val Integer)
  , _rDSDBInstanceKmsKeyId :: Maybe (Val Text)
  , _rDSDBInstanceLicenseModel :: Maybe (Val Text)
  , _rDSDBInstanceMasterUserPassword :: Maybe (Val Text)
  , _rDSDBInstanceMasterUsername :: Maybe (Val Text)
  , _rDSDBInstanceMonitoringInterval :: Maybe (Val Integer)
  , _rDSDBInstanceMonitoringRoleArn :: Maybe (Val Text)
  , _rDSDBInstanceMultiAZ :: Maybe (Val Bool)
  , _rDSDBInstanceOptionGroupName :: Maybe (Val Text)
  , _rDSDBInstancePerformanceInsightsKMSKeyId :: Maybe (Val Text)
  , _rDSDBInstancePerformanceInsightsRetentionPeriod :: Maybe (Val Integer)
  , _rDSDBInstancePort :: Maybe (Val Text)
  , _rDSDBInstancePreferredBackupWindow :: Maybe (Val Text)
  , _rDSDBInstancePreferredMaintenanceWindow :: Maybe (Val Text)
  , _rDSDBInstanceProcessorFeatures :: Maybe [RDSDBInstanceProcessorFeature]
  , _rDSDBInstancePromotionTier :: Maybe (Val Integer)
  , _rDSDBInstancePubliclyAccessible :: Maybe (Val Bool)
  , _rDSDBInstanceSourceDBInstanceIdentifier :: Maybe (Val Text)
  , _rDSDBInstanceSourceRegion :: Maybe (Val Text)
  , _rDSDBInstanceStorageEncrypted :: Maybe (Val Bool)
  , _rDSDBInstanceStorageType :: Maybe (Val Text)
  , _rDSDBInstanceTags :: Maybe [Tag]
  , _rDSDBInstanceTimezone :: Maybe (Val Text)
  , _rDSDBInstanceVPCSecurityGroups :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON RDSDBInstance where
  toJSON RDSDBInstance{..} =
    object $
    catMaybes
    [ fmap (("AllocatedStorage",) . toJSON) _rDSDBInstanceAllocatedStorage
    , fmap (("AllowMajorVersionUpgrade",) . toJSON . fmap Bool') _rDSDBInstanceAllowMajorVersionUpgrade
    , fmap (("AutoMinorVersionUpgrade",) . toJSON . fmap Bool') _rDSDBInstanceAutoMinorVersionUpgrade
    , fmap (("AvailabilityZone",) . toJSON) _rDSDBInstanceAvailabilityZone
    , fmap (("BackupRetentionPeriod",) . toJSON) _rDSDBInstanceBackupRetentionPeriod
    , fmap (("CharacterSetName",) . toJSON) _rDSDBInstanceCharacterSetName
    , fmap (("CopyTagsToSnapshot",) . toJSON . fmap Bool') _rDSDBInstanceCopyTagsToSnapshot
    , fmap (("DBClusterIdentifier",) . toJSON) _rDSDBInstanceDBClusterIdentifier
    , (Just . ("DBInstanceClass",) . toJSON) _rDSDBInstanceDBInstanceClass
    , fmap (("DBInstanceIdentifier",) . toJSON) _rDSDBInstanceDBInstanceIdentifier
    , fmap (("DBName",) . toJSON) _rDSDBInstanceDBName
    , fmap (("DBParameterGroupName",) . toJSON) _rDSDBInstanceDBParameterGroupName
    , fmap (("DBSecurityGroups",) . toJSON) _rDSDBInstanceDBSecurityGroups
    , fmap (("DBSnapshotIdentifier",) . toJSON) _rDSDBInstanceDBSnapshotIdentifier
    , fmap (("DBSubnetGroupName",) . toJSON) _rDSDBInstanceDBSubnetGroupName
    , fmap (("DeleteAutomatedBackups",) . toJSON . fmap Bool') _rDSDBInstanceDeleteAutomatedBackups
    , fmap (("DeletionProtection",) . toJSON . fmap Bool') _rDSDBInstanceDeletionProtection
    , fmap (("Domain",) . toJSON) _rDSDBInstanceDomain
    , fmap (("DomainIAMRoleName",) . toJSON) _rDSDBInstanceDomainIAMRoleName
    , fmap (("EnableCloudwatchLogsExports",) . toJSON) _rDSDBInstanceEnableCloudwatchLogsExports
    , fmap (("EnableIAMDatabaseAuthentication",) . toJSON . fmap Bool') _rDSDBInstanceEnableIAMDatabaseAuthentication
    , fmap (("EnablePerformanceInsights",) . toJSON . fmap Bool') _rDSDBInstanceEnablePerformanceInsights
    , fmap (("Engine",) . toJSON) _rDSDBInstanceEngine
    , fmap (("EngineVersion",) . toJSON) _rDSDBInstanceEngineVersion
    , fmap (("Iops",) . toJSON . fmap Integer') _rDSDBInstanceIops
    , fmap (("KmsKeyId",) . toJSON) _rDSDBInstanceKmsKeyId
    , fmap (("LicenseModel",) . toJSON) _rDSDBInstanceLicenseModel
    , fmap (("MasterUserPassword",) . toJSON) _rDSDBInstanceMasterUserPassword
    , fmap (("MasterUsername",) . toJSON) _rDSDBInstanceMasterUsername
    , fmap (("MonitoringInterval",) . toJSON . fmap Integer') _rDSDBInstanceMonitoringInterval
    , fmap (("MonitoringRoleArn",) . toJSON) _rDSDBInstanceMonitoringRoleArn
    , fmap (("MultiAZ",) . toJSON . fmap Bool') _rDSDBInstanceMultiAZ
    , fmap (("OptionGroupName",) . toJSON) _rDSDBInstanceOptionGroupName
    , fmap (("PerformanceInsightsKMSKeyId",) . toJSON) _rDSDBInstancePerformanceInsightsKMSKeyId
    , fmap (("PerformanceInsightsRetentionPeriod",) . toJSON . fmap Integer') _rDSDBInstancePerformanceInsightsRetentionPeriod
    , fmap (("Port",) . toJSON) _rDSDBInstancePort
    , fmap (("PreferredBackupWindow",) . toJSON) _rDSDBInstancePreferredBackupWindow
    , fmap (("PreferredMaintenanceWindow",) . toJSON) _rDSDBInstancePreferredMaintenanceWindow
    , fmap (("ProcessorFeatures",) . toJSON) _rDSDBInstanceProcessorFeatures
    , fmap (("PromotionTier",) . toJSON . fmap Integer') _rDSDBInstancePromotionTier
    , fmap (("PubliclyAccessible",) . toJSON . fmap Bool') _rDSDBInstancePubliclyAccessible
    , fmap (("SourceDBInstanceIdentifier",) . toJSON) _rDSDBInstanceSourceDBInstanceIdentifier
    , fmap (("SourceRegion",) . toJSON) _rDSDBInstanceSourceRegion
    , fmap (("StorageEncrypted",) . toJSON . fmap Bool') _rDSDBInstanceStorageEncrypted
    , fmap (("StorageType",) . toJSON) _rDSDBInstanceStorageType
    , fmap (("Tags",) . toJSON) _rDSDBInstanceTags
    , fmap (("Timezone",) . toJSON) _rDSDBInstanceTimezone
    , fmap (("VPCSecurityGroups",) . toJSON) _rDSDBInstanceVPCSecurityGroups
    ]

instance FromJSON RDSDBInstance where
  parseJSON (Object obj) =
    RDSDBInstance <$>
      (obj .:? "AllocatedStorage") <*>
      fmap (fmap (fmap unBool')) (obj .:? "AllowMajorVersionUpgrade") <*>
      fmap (fmap (fmap unBool')) (obj .:? "AutoMinorVersionUpgrade") <*>
      (obj .:? "AvailabilityZone") <*>
      (obj .:? "BackupRetentionPeriod") <*>
      (obj .:? "CharacterSetName") <*>
      fmap (fmap (fmap unBool')) (obj .:? "CopyTagsToSnapshot") <*>
      (obj .:? "DBClusterIdentifier") <*>
      (obj .: "DBInstanceClass") <*>
      (obj .:? "DBInstanceIdentifier") <*>
      (obj .:? "DBName") <*>
      (obj .:? "DBParameterGroupName") <*>
      (obj .:? "DBSecurityGroups") <*>
      (obj .:? "DBSnapshotIdentifier") <*>
      (obj .:? "DBSubnetGroupName") <*>
      fmap (fmap (fmap unBool')) (obj .:? "DeleteAutomatedBackups") <*>
      fmap (fmap (fmap unBool')) (obj .:? "DeletionProtection") <*>
      (obj .:? "Domain") <*>
      (obj .:? "DomainIAMRoleName") <*>
      (obj .:? "EnableCloudwatchLogsExports") <*>
      fmap (fmap (fmap unBool')) (obj .:? "EnableIAMDatabaseAuthentication") <*>
      fmap (fmap (fmap unBool')) (obj .:? "EnablePerformanceInsights") <*>
      (obj .:? "Engine") <*>
      (obj .:? "EngineVersion") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "Iops") <*>
      (obj .:? "KmsKeyId") <*>
      (obj .:? "LicenseModel") <*>
      (obj .:? "MasterUserPassword") <*>
      (obj .:? "MasterUsername") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "MonitoringInterval") <*>
      (obj .:? "MonitoringRoleArn") <*>
      fmap (fmap (fmap unBool')) (obj .:? "MultiAZ") <*>
      (obj .:? "OptionGroupName") <*>
      (obj .:? "PerformanceInsightsKMSKeyId") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "PerformanceInsightsRetentionPeriod") <*>
      (obj .:? "Port") <*>
      (obj .:? "PreferredBackupWindow") <*>
      (obj .:? "PreferredMaintenanceWindow") <*>
      (obj .:? "ProcessorFeatures") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "PromotionTier") <*>
      fmap (fmap (fmap unBool')) (obj .:? "PubliclyAccessible") <*>
      (obj .:? "SourceDBInstanceIdentifier") <*>
      (obj .:? "SourceRegion") <*>
      fmap (fmap (fmap unBool')) (obj .:? "StorageEncrypted") <*>
      (obj .:? "StorageType") <*>
      (obj .:? "Tags") <*>
      (obj .:? "Timezone") <*>
      (obj .:? "VPCSecurityGroups")
  parseJSON _ = mempty

-- | Constructor for 'RDSDBInstance' containing required fields as arguments.
rdsdbInstance
  :: Val Text -- ^ 'rdsdbiDBInstanceClass'
  -> RDSDBInstance
rdsdbInstance dBInstanceClassarg =
  RDSDBInstance
  { _rDSDBInstanceAllocatedStorage = Nothing
  , _rDSDBInstanceAllowMajorVersionUpgrade = Nothing
  , _rDSDBInstanceAutoMinorVersionUpgrade = Nothing
  , _rDSDBInstanceAvailabilityZone = Nothing
  , _rDSDBInstanceBackupRetentionPeriod = Nothing
  , _rDSDBInstanceCharacterSetName = Nothing
  , _rDSDBInstanceCopyTagsToSnapshot = Nothing
  , _rDSDBInstanceDBClusterIdentifier = Nothing
  , _rDSDBInstanceDBInstanceClass = dBInstanceClassarg
  , _rDSDBInstanceDBInstanceIdentifier = Nothing
  , _rDSDBInstanceDBName = Nothing
  , _rDSDBInstanceDBParameterGroupName = Nothing
  , _rDSDBInstanceDBSecurityGroups = Nothing
  , _rDSDBInstanceDBSnapshotIdentifier = Nothing
  , _rDSDBInstanceDBSubnetGroupName = Nothing
  , _rDSDBInstanceDeleteAutomatedBackups = Nothing
  , _rDSDBInstanceDeletionProtection = Nothing
  , _rDSDBInstanceDomain = Nothing
  , _rDSDBInstanceDomainIAMRoleName = Nothing
  , _rDSDBInstanceEnableCloudwatchLogsExports = Nothing
  , _rDSDBInstanceEnableIAMDatabaseAuthentication = Nothing
  , _rDSDBInstanceEnablePerformanceInsights = Nothing
  , _rDSDBInstanceEngine = Nothing
  , _rDSDBInstanceEngineVersion = Nothing
  , _rDSDBInstanceIops = Nothing
  , _rDSDBInstanceKmsKeyId = Nothing
  , _rDSDBInstanceLicenseModel = Nothing
  , _rDSDBInstanceMasterUserPassword = Nothing
  , _rDSDBInstanceMasterUsername = Nothing
  , _rDSDBInstanceMonitoringInterval = Nothing
  , _rDSDBInstanceMonitoringRoleArn = Nothing
  , _rDSDBInstanceMultiAZ = Nothing
  , _rDSDBInstanceOptionGroupName = Nothing
  , _rDSDBInstancePerformanceInsightsKMSKeyId = Nothing
  , _rDSDBInstancePerformanceInsightsRetentionPeriod = Nothing
  , _rDSDBInstancePort = Nothing
  , _rDSDBInstancePreferredBackupWindow = Nothing
  , _rDSDBInstancePreferredMaintenanceWindow = Nothing
  , _rDSDBInstanceProcessorFeatures = Nothing
  , _rDSDBInstancePromotionTier = Nothing
  , _rDSDBInstancePubliclyAccessible = Nothing
  , _rDSDBInstanceSourceDBInstanceIdentifier = Nothing
  , _rDSDBInstanceSourceRegion = Nothing
  , _rDSDBInstanceStorageEncrypted = Nothing
  , _rDSDBInstanceStorageType = Nothing
  , _rDSDBInstanceTags = Nothing
  , _rDSDBInstanceTimezone = Nothing
  , _rDSDBInstanceVPCSecurityGroups = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-allocatedstorage
rdsdbiAllocatedStorage :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiAllocatedStorage = lens _rDSDBInstanceAllocatedStorage (\s a -> s { _rDSDBInstanceAllocatedStorage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-allowmajorversionupgrade
rdsdbiAllowMajorVersionUpgrade :: Lens' RDSDBInstance (Maybe (Val Bool))
rdsdbiAllowMajorVersionUpgrade = lens _rDSDBInstanceAllowMajorVersionUpgrade (\s a -> s { _rDSDBInstanceAllowMajorVersionUpgrade = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-autominorversionupgrade
rdsdbiAutoMinorVersionUpgrade :: Lens' RDSDBInstance (Maybe (Val Bool))
rdsdbiAutoMinorVersionUpgrade = lens _rDSDBInstanceAutoMinorVersionUpgrade (\s a -> s { _rDSDBInstanceAutoMinorVersionUpgrade = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-availabilityzone
rdsdbiAvailabilityZone :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiAvailabilityZone = lens _rDSDBInstanceAvailabilityZone (\s a -> s { _rDSDBInstanceAvailabilityZone = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-backupretentionperiod
rdsdbiBackupRetentionPeriod :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiBackupRetentionPeriod = lens _rDSDBInstanceBackupRetentionPeriod (\s a -> s { _rDSDBInstanceBackupRetentionPeriod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-charactersetname
rdsdbiCharacterSetName :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiCharacterSetName = lens _rDSDBInstanceCharacterSetName (\s a -> s { _rDSDBInstanceCharacterSetName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-copytagstosnapshot
rdsdbiCopyTagsToSnapshot :: Lens' RDSDBInstance (Maybe (Val Bool))
rdsdbiCopyTagsToSnapshot = lens _rDSDBInstanceCopyTagsToSnapshot (\s a -> s { _rDSDBInstanceCopyTagsToSnapshot = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbclusteridentifier
rdsdbiDBClusterIdentifier :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiDBClusterIdentifier = lens _rDSDBInstanceDBClusterIdentifier (\s a -> s { _rDSDBInstanceDBClusterIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbinstanceclass
rdsdbiDBInstanceClass :: Lens' RDSDBInstance (Val Text)
rdsdbiDBInstanceClass = lens _rDSDBInstanceDBInstanceClass (\s a -> s { _rDSDBInstanceDBInstanceClass = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbinstanceidentifier
rdsdbiDBInstanceIdentifier :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiDBInstanceIdentifier = lens _rDSDBInstanceDBInstanceIdentifier (\s a -> s { _rDSDBInstanceDBInstanceIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbname
rdsdbiDBName :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiDBName = lens _rDSDBInstanceDBName (\s a -> s { _rDSDBInstanceDBName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbparametergroupname
rdsdbiDBParameterGroupName :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiDBParameterGroupName = lens _rDSDBInstanceDBParameterGroupName (\s a -> s { _rDSDBInstanceDBParameterGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbsecuritygroups
rdsdbiDBSecurityGroups :: Lens' RDSDBInstance (Maybe (ValList Text))
rdsdbiDBSecurityGroups = lens _rDSDBInstanceDBSecurityGroups (\s a -> s { _rDSDBInstanceDBSecurityGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbsnapshotidentifier
rdsdbiDBSnapshotIdentifier :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiDBSnapshotIdentifier = lens _rDSDBInstanceDBSnapshotIdentifier (\s a -> s { _rDSDBInstanceDBSnapshotIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbsubnetgroupname
rdsdbiDBSubnetGroupName :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiDBSubnetGroupName = lens _rDSDBInstanceDBSubnetGroupName (\s a -> s { _rDSDBInstanceDBSubnetGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-deleteautomatedbackups
rdsdbiDeleteAutomatedBackups :: Lens' RDSDBInstance (Maybe (Val Bool))
rdsdbiDeleteAutomatedBackups = lens _rDSDBInstanceDeleteAutomatedBackups (\s a -> s { _rDSDBInstanceDeleteAutomatedBackups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-deletionprotection
rdsdbiDeletionProtection :: Lens' RDSDBInstance (Maybe (Val Bool))
rdsdbiDeletionProtection = lens _rDSDBInstanceDeletionProtection (\s a -> s { _rDSDBInstanceDeletionProtection = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-domain
rdsdbiDomain :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiDomain = lens _rDSDBInstanceDomain (\s a -> s { _rDSDBInstanceDomain = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-domainiamrolename
rdsdbiDomainIAMRoleName :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiDomainIAMRoleName = lens _rDSDBInstanceDomainIAMRoleName (\s a -> s { _rDSDBInstanceDomainIAMRoleName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-enablecloudwatchlogsexports
rdsdbiEnableCloudwatchLogsExports :: Lens' RDSDBInstance (Maybe (ValList Text))
rdsdbiEnableCloudwatchLogsExports = lens _rDSDBInstanceEnableCloudwatchLogsExports (\s a -> s { _rDSDBInstanceEnableCloudwatchLogsExports = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-enableiamdatabaseauthentication
rdsdbiEnableIAMDatabaseAuthentication :: Lens' RDSDBInstance (Maybe (Val Bool))
rdsdbiEnableIAMDatabaseAuthentication = lens _rDSDBInstanceEnableIAMDatabaseAuthentication (\s a -> s { _rDSDBInstanceEnableIAMDatabaseAuthentication = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-enableperformanceinsights
rdsdbiEnablePerformanceInsights :: Lens' RDSDBInstance (Maybe (Val Bool))
rdsdbiEnablePerformanceInsights = lens _rDSDBInstanceEnablePerformanceInsights (\s a -> s { _rDSDBInstanceEnablePerformanceInsights = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-engine
rdsdbiEngine :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiEngine = lens _rDSDBInstanceEngine (\s a -> s { _rDSDBInstanceEngine = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-engineversion
rdsdbiEngineVersion :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiEngineVersion = lens _rDSDBInstanceEngineVersion (\s a -> s { _rDSDBInstanceEngineVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-iops
rdsdbiIops :: Lens' RDSDBInstance (Maybe (Val Integer))
rdsdbiIops = lens _rDSDBInstanceIops (\s a -> s { _rDSDBInstanceIops = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-kmskeyid
rdsdbiKmsKeyId :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiKmsKeyId = lens _rDSDBInstanceKmsKeyId (\s a -> s { _rDSDBInstanceKmsKeyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-licensemodel
rdsdbiLicenseModel :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiLicenseModel = lens _rDSDBInstanceLicenseModel (\s a -> s { _rDSDBInstanceLicenseModel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-masteruserpassword
rdsdbiMasterUserPassword :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiMasterUserPassword = lens _rDSDBInstanceMasterUserPassword (\s a -> s { _rDSDBInstanceMasterUserPassword = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-masterusername
rdsdbiMasterUsername :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiMasterUsername = lens _rDSDBInstanceMasterUsername (\s a -> s { _rDSDBInstanceMasterUsername = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-monitoringinterval
rdsdbiMonitoringInterval :: Lens' RDSDBInstance (Maybe (Val Integer))
rdsdbiMonitoringInterval = lens _rDSDBInstanceMonitoringInterval (\s a -> s { _rDSDBInstanceMonitoringInterval = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-monitoringrolearn
rdsdbiMonitoringRoleArn :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiMonitoringRoleArn = lens _rDSDBInstanceMonitoringRoleArn (\s a -> s { _rDSDBInstanceMonitoringRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-multiaz
rdsdbiMultiAZ :: Lens' RDSDBInstance (Maybe (Val Bool))
rdsdbiMultiAZ = lens _rDSDBInstanceMultiAZ (\s a -> s { _rDSDBInstanceMultiAZ = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-optiongroupname
rdsdbiOptionGroupName :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiOptionGroupName = lens _rDSDBInstanceOptionGroupName (\s a -> s { _rDSDBInstanceOptionGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-performanceinsightskmskeyid
rdsdbiPerformanceInsightsKMSKeyId :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiPerformanceInsightsKMSKeyId = lens _rDSDBInstancePerformanceInsightsKMSKeyId (\s a -> s { _rDSDBInstancePerformanceInsightsKMSKeyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-performanceinsightsretentionperiod
rdsdbiPerformanceInsightsRetentionPeriod :: Lens' RDSDBInstance (Maybe (Val Integer))
rdsdbiPerformanceInsightsRetentionPeriod = lens _rDSDBInstancePerformanceInsightsRetentionPeriod (\s a -> s { _rDSDBInstancePerformanceInsightsRetentionPeriod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-port
rdsdbiPort :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiPort = lens _rDSDBInstancePort (\s a -> s { _rDSDBInstancePort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-preferredbackupwindow
rdsdbiPreferredBackupWindow :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiPreferredBackupWindow = lens _rDSDBInstancePreferredBackupWindow (\s a -> s { _rDSDBInstancePreferredBackupWindow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-preferredmaintenancewindow
rdsdbiPreferredMaintenanceWindow :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiPreferredMaintenanceWindow = lens _rDSDBInstancePreferredMaintenanceWindow (\s a -> s { _rDSDBInstancePreferredMaintenanceWindow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-processorfeatures
rdsdbiProcessorFeatures :: Lens' RDSDBInstance (Maybe [RDSDBInstanceProcessorFeature])
rdsdbiProcessorFeatures = lens _rDSDBInstanceProcessorFeatures (\s a -> s { _rDSDBInstanceProcessorFeatures = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-promotiontier
rdsdbiPromotionTier :: Lens' RDSDBInstance (Maybe (Val Integer))
rdsdbiPromotionTier = lens _rDSDBInstancePromotionTier (\s a -> s { _rDSDBInstancePromotionTier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-publiclyaccessible
rdsdbiPubliclyAccessible :: Lens' RDSDBInstance (Maybe (Val Bool))
rdsdbiPubliclyAccessible = lens _rDSDBInstancePubliclyAccessible (\s a -> s { _rDSDBInstancePubliclyAccessible = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-sourcedbinstanceidentifier
rdsdbiSourceDBInstanceIdentifier :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiSourceDBInstanceIdentifier = lens _rDSDBInstanceSourceDBInstanceIdentifier (\s a -> s { _rDSDBInstanceSourceDBInstanceIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-sourceregion
rdsdbiSourceRegion :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiSourceRegion = lens _rDSDBInstanceSourceRegion (\s a -> s { _rDSDBInstanceSourceRegion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-storageencrypted
rdsdbiStorageEncrypted :: Lens' RDSDBInstance (Maybe (Val Bool))
rdsdbiStorageEncrypted = lens _rDSDBInstanceStorageEncrypted (\s a -> s { _rDSDBInstanceStorageEncrypted = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-storagetype
rdsdbiStorageType :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiStorageType = lens _rDSDBInstanceStorageType (\s a -> s { _rDSDBInstanceStorageType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-tags
rdsdbiTags :: Lens' RDSDBInstance (Maybe [Tag])
rdsdbiTags = lens _rDSDBInstanceTags (\s a -> s { _rDSDBInstanceTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-timezone
rdsdbiTimezone :: Lens' RDSDBInstance (Maybe (Val Text))
rdsdbiTimezone = lens _rDSDBInstanceTimezone (\s a -> s { _rDSDBInstanceTimezone = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-vpcsecuritygroups
rdsdbiVPCSecurityGroups :: Lens' RDSDBInstance (Maybe (ValList Text))
rdsdbiVPCSecurityGroups = lens _rDSDBInstanceVPCSecurityGroups (\s a -> s { _rDSDBInstanceVPCSecurityGroups = a })
