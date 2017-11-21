{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-database.html

module Stratosphere.Resources.GlueDatabase where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.GlueDatabaseDatabaseInput

-- | Full data type definition for GlueDatabase. See 'glueDatabase' for a more
-- convenient constructor.
data GlueDatabase =
  GlueDatabase
  { _glueDatabaseCatalogId :: Val Text
  , _glueDatabaseDatabaseInput :: GlueDatabaseDatabaseInput
  } deriving (Show, Eq)

instance ToJSON GlueDatabase where
  toJSON GlueDatabase{..} =
    object $
    catMaybes
    [ (Just . ("CatalogId",) . toJSON) _glueDatabaseCatalogId
    , (Just . ("DatabaseInput",) . toJSON) _glueDatabaseDatabaseInput
    ]

instance FromJSON GlueDatabase where
  parseJSON (Object obj) =
    GlueDatabase <$>
      (obj .: "CatalogId") <*>
      (obj .: "DatabaseInput")
  parseJSON _ = mempty

-- | Constructor for 'GlueDatabase' containing required fields as arguments.
glueDatabase
  :: Val Text -- ^ 'gdCatalogId'
  -> GlueDatabaseDatabaseInput -- ^ 'gdDatabaseInput'
  -> GlueDatabase
glueDatabase catalogIdarg databaseInputarg =
  GlueDatabase
  { _glueDatabaseCatalogId = catalogIdarg
  , _glueDatabaseDatabaseInput = databaseInputarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-database.html#cfn-glue-database-catalogid
gdCatalogId :: Lens' GlueDatabase (Val Text)
gdCatalogId = lens _glueDatabaseCatalogId (\s a -> s { _glueDatabaseCatalogId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-database.html#cfn-glue-database-databaseinput
gdDatabaseInput :: Lens' GlueDatabase GlueDatabaseDatabaseInput
gdDatabaseInput = lens _glueDatabaseDatabaseInput (\s a -> s { _glueDatabaseDatabaseInput = a })