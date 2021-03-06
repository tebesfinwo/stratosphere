{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-gatewayrouteprop.html

module Stratosphere.Resources.EC2VPNGatewayRoutePropagation where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2VPNGatewayRoutePropagation. See
-- 'ec2VPNGatewayRoutePropagation' for a more convenient constructor.
data EC2VPNGatewayRoutePropagation =
  EC2VPNGatewayRoutePropagation
  { _eC2VPNGatewayRoutePropagationRouteTableIds :: ValList Text
  , _eC2VPNGatewayRoutePropagationVpnGatewayId :: Val Text
  } deriving (Show, Eq)

instance ToJSON EC2VPNGatewayRoutePropagation where
  toJSON EC2VPNGatewayRoutePropagation{..} =
    object $
    catMaybes
    [ (Just . ("RouteTableIds",) . toJSON) _eC2VPNGatewayRoutePropagationRouteTableIds
    , (Just . ("VpnGatewayId",) . toJSON) _eC2VPNGatewayRoutePropagationVpnGatewayId
    ]

instance FromJSON EC2VPNGatewayRoutePropagation where
  parseJSON (Object obj) =
    EC2VPNGatewayRoutePropagation <$>
      (obj .: "RouteTableIds") <*>
      (obj .: "VpnGatewayId")
  parseJSON _ = mempty

-- | Constructor for 'EC2VPNGatewayRoutePropagation' containing required
-- fields as arguments.
ec2VPNGatewayRoutePropagation
  :: ValList Text -- ^ 'ecvpngrpRouteTableIds'
  -> Val Text -- ^ 'ecvpngrpVpnGatewayId'
  -> EC2VPNGatewayRoutePropagation
ec2VPNGatewayRoutePropagation routeTableIdsarg vpnGatewayIdarg =
  EC2VPNGatewayRoutePropagation
  { _eC2VPNGatewayRoutePropagationRouteTableIds = routeTableIdsarg
  , _eC2VPNGatewayRoutePropagationVpnGatewayId = vpnGatewayIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-gatewayrouteprop.html#cfn-ec2-vpngatewayrouteprop-routetableids
ecvpngrpRouteTableIds :: Lens' EC2VPNGatewayRoutePropagation (ValList Text)
ecvpngrpRouteTableIds = lens _eC2VPNGatewayRoutePropagationRouteTableIds (\s a -> s { _eC2VPNGatewayRoutePropagationRouteTableIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-gatewayrouteprop.html#cfn-ec2-vpngatewayrouteprop-vpngatewayid
ecvpngrpVpnGatewayId :: Lens' EC2VPNGatewayRoutePropagation (Val Text)
ecvpngrpVpnGatewayId = lens _eC2VPNGatewayRoutePropagationVpnGatewayId (\s a -> s { _eC2VPNGatewayRoutePropagationVpnGatewayId = a })
