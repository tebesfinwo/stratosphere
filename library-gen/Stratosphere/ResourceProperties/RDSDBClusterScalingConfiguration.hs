{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-scalingconfiguration.html

module Stratosphere.ResourceProperties.RDSDBClusterScalingConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for RDSDBClusterScalingConfiguration. See
-- 'rdsdbClusterScalingConfiguration' for a more convenient constructor.
data RDSDBClusterScalingConfiguration =
  RDSDBClusterScalingConfiguration
  { _rDSDBClusterScalingConfigurationAutoPause :: Maybe (Val Bool)
  , _rDSDBClusterScalingConfigurationMaxCapacity :: Maybe (Val Integer)
  , _rDSDBClusterScalingConfigurationMinCapacity :: Maybe (Val Integer)
  , _rDSDBClusterScalingConfigurationSecondsUntilAutoPause :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON RDSDBClusterScalingConfiguration where
  toJSON RDSDBClusterScalingConfiguration{..} =
    object $
    catMaybes
    [ fmap (("AutoPause",) . toJSON . fmap Bool') _rDSDBClusterScalingConfigurationAutoPause
    , fmap (("MaxCapacity",) . toJSON . fmap Integer') _rDSDBClusterScalingConfigurationMaxCapacity
    , fmap (("MinCapacity",) . toJSON . fmap Integer') _rDSDBClusterScalingConfigurationMinCapacity
    , fmap (("SecondsUntilAutoPause",) . toJSON . fmap Integer') _rDSDBClusterScalingConfigurationSecondsUntilAutoPause
    ]

instance FromJSON RDSDBClusterScalingConfiguration where
  parseJSON (Object obj) =
    RDSDBClusterScalingConfiguration <$>
      fmap (fmap (fmap unBool')) (obj .:? "AutoPause") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "MaxCapacity") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "MinCapacity") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "SecondsUntilAutoPause")
  parseJSON _ = mempty

-- | Constructor for 'RDSDBClusterScalingConfiguration' containing required
-- fields as arguments.
rdsdbClusterScalingConfiguration
  :: RDSDBClusterScalingConfiguration
rdsdbClusterScalingConfiguration  =
  RDSDBClusterScalingConfiguration
  { _rDSDBClusterScalingConfigurationAutoPause = Nothing
  , _rDSDBClusterScalingConfigurationMaxCapacity = Nothing
  , _rDSDBClusterScalingConfigurationMinCapacity = Nothing
  , _rDSDBClusterScalingConfigurationSecondsUntilAutoPause = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-scalingconfiguration.html#cfn-rds-dbcluster-scalingconfiguration-autopause
rdsdbcscAutoPause :: Lens' RDSDBClusterScalingConfiguration (Maybe (Val Bool))
rdsdbcscAutoPause = lens _rDSDBClusterScalingConfigurationAutoPause (\s a -> s { _rDSDBClusterScalingConfigurationAutoPause = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-scalingconfiguration.html#cfn-rds-dbcluster-scalingconfiguration-maxcapacity
rdsdbcscMaxCapacity :: Lens' RDSDBClusterScalingConfiguration (Maybe (Val Integer))
rdsdbcscMaxCapacity = lens _rDSDBClusterScalingConfigurationMaxCapacity (\s a -> s { _rDSDBClusterScalingConfigurationMaxCapacity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-scalingconfiguration.html#cfn-rds-dbcluster-scalingconfiguration-mincapacity
rdsdbcscMinCapacity :: Lens' RDSDBClusterScalingConfiguration (Maybe (Val Integer))
rdsdbcscMinCapacity = lens _rDSDBClusterScalingConfigurationMinCapacity (\s a -> s { _rDSDBClusterScalingConfigurationMinCapacity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-scalingconfiguration.html#cfn-rds-dbcluster-scalingconfiguration-secondsuntilautopause
rdsdbcscSecondsUntilAutoPause :: Lens' RDSDBClusterScalingConfiguration (Maybe (Val Integer))
rdsdbcscSecondsUntilAutoPause = lens _rDSDBClusterScalingConfigurationSecondsUntilAutoPause (\s a -> s { _rDSDBClusterScalingConfigurationSecondsUntilAutoPause = a })
