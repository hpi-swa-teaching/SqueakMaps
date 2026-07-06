testing - pins
testSavingAndRemovingSelectedPin

	| location |
	location := SMALocation new
		label: 'Pin';
		coordinates: (SMAGeoCoordinate newLong: 13.133 lat: 52.393);
		boundingBox: (13.132 @ 52.392 corner: 13.134 @ 52.394);
		yourself.
	application setSelectedPin: location.
	self deny: application isSelectedPinSaved.
	application savePin.
	self assert: application isSelectedPinSaved.
	application useSelectedPinAsStart.
	self assert: application selectedStartPinRouteTarget == location.
	application routeToSelectedPin.
	self assert: application selectedDestinationPinRouteTarget == location.
	application removePin.
	self deny: application isSelectedPinSaved
