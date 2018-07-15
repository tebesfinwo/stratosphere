{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-endpointconfig.html

module Stratosphere.Resources.SageMakerEndpointConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SageMakerEndpointConfigProductionVariant
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for SageMakerEndpointConfig. See
-- 'sageMakerEndpointConfig' for a more convenient constructor.
data SageMakerEndpointConfig =
  SageMakerEndpointConfig
  { _sageMakerEndpointConfigEndpointConfigName :: Maybe (Val Text)
  , _sageMakerEndpointConfigKmsKeyId :: Maybe (Val Text)
  , _sageMakerEndpointConfigProductionVariants :: [SageMakerEndpointConfigProductionVariant]
  , _sageMakerEndpointConfigTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToJSON SageMakerEndpointConfig where
  toJSON SageMakerEndpointConfig{..} =
    object $
    catMaybes
    [ fmap (("EndpointConfigName",) . toJSON) _sageMakerEndpointConfigEndpointConfigName
    , fmap (("KmsKeyId",) . toJSON) _sageMakerEndpointConfigKmsKeyId
    , (Just . ("ProductionVariants",) . toJSON) _sageMakerEndpointConfigProductionVariants
    , fmap (("Tags",) . toJSON) _sageMakerEndpointConfigTags
    ]

instance FromJSON SageMakerEndpointConfig where
  parseJSON (Object obj) =
    SageMakerEndpointConfig <$>
      (obj .:? "EndpointConfigName") <*>
      (obj .:? "KmsKeyId") <*>
      (obj .: "ProductionVariants") <*>
      (obj .:? "Tags")
  parseJSON _ = mempty

-- | Constructor for 'SageMakerEndpointConfig' containing required fields as
-- arguments.
sageMakerEndpointConfig
  :: [SageMakerEndpointConfigProductionVariant] -- ^ 'smecProductionVariants'
  -> SageMakerEndpointConfig
sageMakerEndpointConfig productionVariantsarg =
  SageMakerEndpointConfig
  { _sageMakerEndpointConfigEndpointConfigName = Nothing
  , _sageMakerEndpointConfigKmsKeyId = Nothing
  , _sageMakerEndpointConfigProductionVariants = productionVariantsarg
  , _sageMakerEndpointConfigTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-endpointconfig.html#cfn-sagemaker-endpointconfig-endpointconfigname
smecEndpointConfigName :: Lens' SageMakerEndpointConfig (Maybe (Val Text))
smecEndpointConfigName = lens _sageMakerEndpointConfigEndpointConfigName (\s a -> s { _sageMakerEndpointConfigEndpointConfigName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-endpointconfig.html#cfn-sagemaker-endpointconfig-kmskeyid
smecKmsKeyId :: Lens' SageMakerEndpointConfig (Maybe (Val Text))
smecKmsKeyId = lens _sageMakerEndpointConfigKmsKeyId (\s a -> s { _sageMakerEndpointConfigKmsKeyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-endpointconfig.html#cfn-sagemaker-endpointconfig-productionvariants
smecProductionVariants :: Lens' SageMakerEndpointConfig [SageMakerEndpointConfigProductionVariant]
smecProductionVariants = lens _sageMakerEndpointConfigProductionVariants (\s a -> s { _sageMakerEndpointConfigProductionVariants = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-endpointconfig.html#cfn-sagemaker-endpointconfig-tags
smecTags :: Lens' SageMakerEndpointConfig (Maybe [Tag])
smecTags = lens _sageMakerEndpointConfigTags (\s a -> s { _sageMakerEndpointConfigTags = a })