building
buildSidebarRoutingChildren: aBuilder

	^ {
		self buildRouteStartList: aBuilder.
		self buildRouteDestinationList: aBuilder.
		self buildDirectionsGoButton: aBuilder.
		self buildDirectionsClearButton: aBuilder }