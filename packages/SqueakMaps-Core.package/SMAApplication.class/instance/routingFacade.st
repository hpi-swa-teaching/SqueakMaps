accessing
routingFacade

	routingFacade ifNil: [
		routingFacade := SMARoutingFacade
			fromOSMFile: (self readStreamForOSMAssetNamed: 'assets/osm/hpi-k-campus-only.osm')].
	^ routingFacade