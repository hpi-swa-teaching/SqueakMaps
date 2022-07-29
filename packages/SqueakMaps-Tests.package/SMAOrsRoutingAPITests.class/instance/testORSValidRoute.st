testing
testORSValidRoute

	| startCoordinates endCoordinates transportationMode actualRoute expectedRoute |
	
	"Coordinates do not have an influence on the output, but are neccessary 
	to execute the method. However these are valid coordinates."
	startCoordinates := SMAGeoCoordinate newFrom: 13.117216 @ 52.388978.
	endCoordinates := SMAGeoCoordinate newFrom: 13.128289 @ 52.393838.
	transportationMode := #car.
	self orsAPI contentSource mockGetJsonFromWith: [^ self validRouteResponse].
	
	expectedRoute := self makeValidRoute.
	actualRoute := self orsAPI getRouteFrom: startCoordinates To: endCoordinates By: transportationMode.
	
	self assert: actualRoute waypoints equals: expectedRoute waypoints.
	self assert: actualRoute distance equals: expectedRoute distance.
	self assert: actualRoute duration equals: expectedRoute duration.
	self assert: actualRoute boundingBox equals: expectedRoute boundingBox
	