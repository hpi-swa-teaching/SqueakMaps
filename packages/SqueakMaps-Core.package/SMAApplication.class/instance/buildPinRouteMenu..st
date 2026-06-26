category management
buildPinRouteMenu: aMenu

	aMenu
		addTitle: 'Route Selected Pins'.
	aMenu
		add: 'Go'
		target: self
		selector: #routeSelectedPins.
		
	^ aMenu