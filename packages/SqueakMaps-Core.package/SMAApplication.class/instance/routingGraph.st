accessing
routingGraph

	routingGraph ifNil: [
		routingGraph := SMARoutingGraph
			fromOSMFile: (SMADecoratedMapMorph readStreamForOSMAssetNamed: 'assets/osm/hpi-k-campus-only.osm')
			forMapMorph: self tiledMapMorph].
	^ routingGraph