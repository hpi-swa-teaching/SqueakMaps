pin management
routeToSelectedPin

	self selectedPin ifNil: [^ self].
	self selectedDestinationPinRouteTarget: self selectedPin.
	(self routeToDestinationTarget: self selectedPin) ifFalse: [
		^ self inform: 'Für diese Adresse konnte keine Route gefunden werden.']