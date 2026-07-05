accessing
routingFacade

	routingFacade ifNil: [routingFacade := SMARoutingFacade fromOSMFile: (self readStreamForOSMAssetNamed: self defaultCampusOSMAssetName)].
	^ routingFacade