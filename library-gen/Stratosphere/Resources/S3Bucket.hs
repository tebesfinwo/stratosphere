{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html

module Stratosphere.Resources.S3Bucket where

import Stratosphere.ResourceImports
import Stratosphere.Types
import Stratosphere.ResourceProperties.S3BucketAccelerateConfiguration
import Stratosphere.ResourceProperties.S3BucketAnalyticsConfiguration
import Stratosphere.ResourceProperties.S3BucketBucketEncryption
import Stratosphere.ResourceProperties.S3BucketCorsConfiguration
import Stratosphere.ResourceProperties.S3BucketInventoryConfiguration
import Stratosphere.ResourceProperties.S3BucketLifecycleConfiguration
import Stratosphere.ResourceProperties.S3BucketLoggingConfiguration
import Stratosphere.ResourceProperties.S3BucketMetricsConfiguration
import Stratosphere.ResourceProperties.S3BucketNotificationConfiguration
import Stratosphere.ResourceProperties.S3BucketPublicAccessBlockConfiguration
import Stratosphere.ResourceProperties.S3BucketReplicationConfiguration
import Stratosphere.ResourceProperties.Tag
import Stratosphere.ResourceProperties.S3BucketVersioningConfiguration
import Stratosphere.ResourceProperties.S3BucketWebsiteConfiguration

-- | Full data type definition for S3Bucket. See 's3Bucket' for a more
-- convenient constructor.
data S3Bucket =
  S3Bucket
  { _s3BucketAccelerateConfiguration :: Maybe S3BucketAccelerateConfiguration
  , _s3BucketAccessControl :: Maybe (Val CannedACL)
  , _s3BucketAnalyticsConfigurations :: Maybe [S3BucketAnalyticsConfiguration]
  , _s3BucketBucketEncryption :: Maybe S3BucketBucketEncryption
  , _s3BucketBucketName :: Maybe (Val Text)
  , _s3BucketCorsConfiguration :: Maybe S3BucketCorsConfiguration
  , _s3BucketInventoryConfigurations :: Maybe [S3BucketInventoryConfiguration]
  , _s3BucketLifecycleConfiguration :: Maybe S3BucketLifecycleConfiguration
  , _s3BucketLoggingConfiguration :: Maybe S3BucketLoggingConfiguration
  , _s3BucketMetricsConfigurations :: Maybe [S3BucketMetricsConfiguration]
  , _s3BucketNotificationConfiguration :: Maybe S3BucketNotificationConfiguration
  , _s3BucketPublicAccessBlockConfiguration :: Maybe S3BucketPublicAccessBlockConfiguration
  , _s3BucketReplicationConfiguration :: Maybe S3BucketReplicationConfiguration
  , _s3BucketTags :: Maybe [Tag]
  , _s3BucketVersioningConfiguration :: Maybe S3BucketVersioningConfiguration
  , _s3BucketWebsiteConfiguration :: Maybe S3BucketWebsiteConfiguration
  } deriving (Show, Eq)

instance ToJSON S3Bucket where
  toJSON S3Bucket{..} =
    object $
    catMaybes
    [ fmap (("AccelerateConfiguration",) . toJSON) _s3BucketAccelerateConfiguration
    , fmap (("AccessControl",) . toJSON) _s3BucketAccessControl
    , fmap (("AnalyticsConfigurations",) . toJSON) _s3BucketAnalyticsConfigurations
    , fmap (("BucketEncryption",) . toJSON) _s3BucketBucketEncryption
    , fmap (("BucketName",) . toJSON) _s3BucketBucketName
    , fmap (("CorsConfiguration",) . toJSON) _s3BucketCorsConfiguration
    , fmap (("InventoryConfigurations",) . toJSON) _s3BucketInventoryConfigurations
    , fmap (("LifecycleConfiguration",) . toJSON) _s3BucketLifecycleConfiguration
    , fmap (("LoggingConfiguration",) . toJSON) _s3BucketLoggingConfiguration
    , fmap (("MetricsConfigurations",) . toJSON) _s3BucketMetricsConfigurations
    , fmap (("NotificationConfiguration",) . toJSON) _s3BucketNotificationConfiguration
    , fmap (("PublicAccessBlockConfiguration",) . toJSON) _s3BucketPublicAccessBlockConfiguration
    , fmap (("ReplicationConfiguration",) . toJSON) _s3BucketReplicationConfiguration
    , fmap (("Tags",) . toJSON) _s3BucketTags
    , fmap (("VersioningConfiguration",) . toJSON) _s3BucketVersioningConfiguration
    , fmap (("WebsiteConfiguration",) . toJSON) _s3BucketWebsiteConfiguration
    ]

instance FromJSON S3Bucket where
  parseJSON (Object obj) =
    S3Bucket <$>
      (obj .:? "AccelerateConfiguration") <*>
      (obj .:? "AccessControl") <*>
      (obj .:? "AnalyticsConfigurations") <*>
      (obj .:? "BucketEncryption") <*>
      (obj .:? "BucketName") <*>
      (obj .:? "CorsConfiguration") <*>
      (obj .:? "InventoryConfigurations") <*>
      (obj .:? "LifecycleConfiguration") <*>
      (obj .:? "LoggingConfiguration") <*>
      (obj .:? "MetricsConfigurations") <*>
      (obj .:? "NotificationConfiguration") <*>
      (obj .:? "PublicAccessBlockConfiguration") <*>
      (obj .:? "ReplicationConfiguration") <*>
      (obj .:? "Tags") <*>
      (obj .:? "VersioningConfiguration") <*>
      (obj .:? "WebsiteConfiguration")
  parseJSON _ = mempty

-- | Constructor for 'S3Bucket' containing required fields as arguments.
s3Bucket
  :: S3Bucket
s3Bucket  =
  S3Bucket
  { _s3BucketAccelerateConfiguration = Nothing
  , _s3BucketAccessControl = Nothing
  , _s3BucketAnalyticsConfigurations = Nothing
  , _s3BucketBucketEncryption = Nothing
  , _s3BucketBucketName = Nothing
  , _s3BucketCorsConfiguration = Nothing
  , _s3BucketInventoryConfigurations = Nothing
  , _s3BucketLifecycleConfiguration = Nothing
  , _s3BucketLoggingConfiguration = Nothing
  , _s3BucketMetricsConfigurations = Nothing
  , _s3BucketNotificationConfiguration = Nothing
  , _s3BucketPublicAccessBlockConfiguration = Nothing
  , _s3BucketReplicationConfiguration = Nothing
  , _s3BucketTags = Nothing
  , _s3BucketVersioningConfiguration = Nothing
  , _s3BucketWebsiteConfiguration = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-accelerateconfiguration
sbAccelerateConfiguration :: Lens' S3Bucket (Maybe S3BucketAccelerateConfiguration)
sbAccelerateConfiguration = lens _s3BucketAccelerateConfiguration (\s a -> s { _s3BucketAccelerateConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-accesscontrol
sbAccessControl :: Lens' S3Bucket (Maybe (Val CannedACL))
sbAccessControl = lens _s3BucketAccessControl (\s a -> s { _s3BucketAccessControl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-analyticsconfigurations
sbAnalyticsConfigurations :: Lens' S3Bucket (Maybe [S3BucketAnalyticsConfiguration])
sbAnalyticsConfigurations = lens _s3BucketAnalyticsConfigurations (\s a -> s { _s3BucketAnalyticsConfigurations = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-bucketencryption
sbBucketEncryption :: Lens' S3Bucket (Maybe S3BucketBucketEncryption)
sbBucketEncryption = lens _s3BucketBucketEncryption (\s a -> s { _s3BucketBucketEncryption = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-name
sbBucketName :: Lens' S3Bucket (Maybe (Val Text))
sbBucketName = lens _s3BucketBucketName (\s a -> s { _s3BucketBucketName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-crossoriginconfig
sbCorsConfiguration :: Lens' S3Bucket (Maybe S3BucketCorsConfiguration)
sbCorsConfiguration = lens _s3BucketCorsConfiguration (\s a -> s { _s3BucketCorsConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-inventoryconfigurations
sbInventoryConfigurations :: Lens' S3Bucket (Maybe [S3BucketInventoryConfiguration])
sbInventoryConfigurations = lens _s3BucketInventoryConfigurations (\s a -> s { _s3BucketInventoryConfigurations = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-lifecycleconfig
sbLifecycleConfiguration :: Lens' S3Bucket (Maybe S3BucketLifecycleConfiguration)
sbLifecycleConfiguration = lens _s3BucketLifecycleConfiguration (\s a -> s { _s3BucketLifecycleConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-loggingconfig
sbLoggingConfiguration :: Lens' S3Bucket (Maybe S3BucketLoggingConfiguration)
sbLoggingConfiguration = lens _s3BucketLoggingConfiguration (\s a -> s { _s3BucketLoggingConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-metricsconfigurations
sbMetricsConfigurations :: Lens' S3Bucket (Maybe [S3BucketMetricsConfiguration])
sbMetricsConfigurations = lens _s3BucketMetricsConfigurations (\s a -> s { _s3BucketMetricsConfigurations = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-notification
sbNotificationConfiguration :: Lens' S3Bucket (Maybe S3BucketNotificationConfiguration)
sbNotificationConfiguration = lens _s3BucketNotificationConfiguration (\s a -> s { _s3BucketNotificationConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-publicaccessblockconfiguration
sbPublicAccessBlockConfiguration :: Lens' S3Bucket (Maybe S3BucketPublicAccessBlockConfiguration)
sbPublicAccessBlockConfiguration = lens _s3BucketPublicAccessBlockConfiguration (\s a -> s { _s3BucketPublicAccessBlockConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-replicationconfiguration
sbReplicationConfiguration :: Lens' S3Bucket (Maybe S3BucketReplicationConfiguration)
sbReplicationConfiguration = lens _s3BucketReplicationConfiguration (\s a -> s { _s3BucketReplicationConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-tags
sbTags :: Lens' S3Bucket (Maybe [Tag])
sbTags = lens _s3BucketTags (\s a -> s { _s3BucketTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-versioning
sbVersioningConfiguration :: Lens' S3Bucket (Maybe S3BucketVersioningConfiguration)
sbVersioningConfiguration = lens _s3BucketVersioningConfiguration (\s a -> s { _s3BucketVersioningConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-websiteconfiguration
sbWebsiteConfiguration :: Lens' S3Bucket (Maybe S3BucketWebsiteConfiguration)
sbWebsiteConfiguration = lens _s3BucketWebsiteConfiguration (\s a -> s { _s3BucketWebsiteConfiguration = a })
