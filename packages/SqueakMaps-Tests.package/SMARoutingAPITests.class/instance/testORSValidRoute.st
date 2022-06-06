as yet unclassified
testORSValidRoute

	| route longLatStart longLatEnd |
	
	"Coordinates do not have an influence on the output, but are neccessary 
	to execute the method. However these are valid coordinates."
	longLatStart := 13.117216@52.388978.
	longLatEnd := 13.128289@52.393838.
	self orsAPI contentSource expectedReturn: #validRoute.
	
	route := self orsAPI getRouteFrom: longLatStart To: longLatEnd.
	
	self assert: route boundingBox size equals: 2.
	self assert: route points notEmpty.
	self assert: route distance > 0.
	self assert: route duration > 0.
	