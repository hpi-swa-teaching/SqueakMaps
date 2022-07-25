searching
testDirectionsValidRoute

	| placeName1 placeName2 middleCoordinates zoom |

	placeName1 := 'Berlin'.
	placeName2 := 'London'.
	middleCoordinates := SMAGeoCoordinate newFrom: 6.630626999999976 @ 52.01211349999999.
	zoom := 6.

	self model startSearchInput: placeName1.
	self model destinationSearchInput: placeName2.
	self model searchDirections.

	self assert: (SMAMapConfigurator geoCoordinatesToWorldPos: middleCoordinates) equals: self model tiledMapMorph center.
	self assert: zoom equals: self model tiledMapMorph zoom.
	self assert: self model tiledMapMorph route points notEmpty.
	self assert: 2 equals: self model tiledMapMorph markers size