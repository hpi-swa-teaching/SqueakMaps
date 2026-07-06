accessing
routingFacade

	self routingUiModel routingFacade ifNil: [
		self routingUiModel routingFacade: (SMARoutingFacade
			fromOSMFile: (self readStreamForOSMAssetNamed: self defaultCampusOSMAssetName))].
	^ self routingUiModel routingFacade