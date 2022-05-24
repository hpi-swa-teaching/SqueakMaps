as yet unclassified
testORSGetWaypointsFromJson

	| json points |
	
	json := self orsAPI contentSource validRoute.
	points := self orsAPI getWaypointsFrom: json.
	
	self assert: points notEmpty.
	points do: [:longLat | self assert: Point equals: longLat class].
	