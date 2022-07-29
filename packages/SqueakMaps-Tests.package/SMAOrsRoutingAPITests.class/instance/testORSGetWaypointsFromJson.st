testing
testORSGetWaypointsFromJson

	| json expectedWaypoints actualWaypoints |
	
	json := self validRouteResponse.
	expectedWaypoints := {
		SMAGeoCoordinate newLong: 13.128474 Lat: 52.39385 .
		SMAGeoCoordinate newLong:  13.128613 Lat: 52.393854 .
		SMAGeoCoordinate newLong:  13.128937 Lat: 52.393864 .
		SMAGeoCoordinate newLong:  13.129165 Lat: 52.39387 .
		SMAGeoCoordinate newLong:  13.129373 Lat: 52.393877}.
		
	actualWaypoints := self orsAPI getWaypointsFrom: json.
	
	self assert: actualWaypoints notEmpty.
	self assert: actualWaypoints equals: expectedWaypoints.
	actualWaypoints do: [:coordinates | self assert: SMAGeoCoordinate equals: coordinates class]
	