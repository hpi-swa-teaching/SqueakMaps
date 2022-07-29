testing
testORSValidRoute

	| route startCoordinates endCoordinates transportationMode |
	
	"Coordinates do not have an influence on the output, but are neccessary 
	to execute the method. However these are valid coordinates."
	startCoordinates := SMAGeoCoordinate newFrom: 13.117216 @ 52.388978.
	endCoordinates := SMAGeoCoordinate newFrom: 13.128289 @ 52.393838.
	transportationMode := #car.
	self orsAPI contentSource mockGetJsonFromWith: [self validRouteResponse].
	
	route := self orsAPI getRouteFrom: startCoordinates To: endCoordinates By: transportationMode.
	
	self assert: route boundingBox height > 0.
	self assert: route boundingBox width > 0.
	self assert: route waypoints notEmpty.
	self assert: route distance > 0.
	self assert: route duration > 0
	