testing
testGeocoderZoomForRectangle

	self assert: (SMAGeocoder new zoomForRectangle: (0 @ 0 corner: 1 @ 1)) equals: 7
