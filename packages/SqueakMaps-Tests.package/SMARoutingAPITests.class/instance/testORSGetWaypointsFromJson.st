testing
testORSGetWaypointsFromJson

	| json waypoints |
	
	json := self validRouteResponse.
	waypoints := self orsAPI getWaypointsFrom: json.
	
	self assert: waypoints notEmpty.
	waypoints do: [:coordinates | self assert: SMAGeoCoordinate equals: coordinates class]
	