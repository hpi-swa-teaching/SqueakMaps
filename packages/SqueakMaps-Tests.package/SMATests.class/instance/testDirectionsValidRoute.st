searching
testDirectionsValidRoute
	| placeName1 placeName2 middleLatLong zoom |

	placeName1 := 'Berlin'.
	placeName2 := 'London'.
	middleLatLong := ( 6.630626999999976@52.01211349999999).
	zoom := 6.

	self squeakMapsWindow startSearchInput: placeName1.
	self squeakMapsWindow destinationSearchInput: placeName2.
	self squeakMapsWindow searchDirections.

	self assert: (SMAMapConfigurator latLongToWorldPos: middleLatLong) equals: self squeakMapsWindow tiledMapMorph center.
	self assert: zoom equals: self squeakMapsWindow tiledMapMorph zoom.
	self assert: self squeakMapsWindow tiledMapMorph route points notEmpty.
	self assert: 2 equals: self squeakMapsWindow tiledMapMorph markers size