testing
testBoundingBoxZoomForValidBoundingBox

	self assert: (geocoder boundingBoxZoom: #('0' '1' '0' '1')) equals: 7
