as yet unclassified
testMakeRouteFromJSON

	| route longLatStart longLatEnd |
	longLatStart := 13.117216@52.388978.
	longLatEnd := 13.128289@52.393838.
	
	route := self orsAPI getRouteFrom: longLatStart To: longLatEnd.
	
	self assert: route boundingBox size equals: 2.
	self assert: route points notEmpty.
	