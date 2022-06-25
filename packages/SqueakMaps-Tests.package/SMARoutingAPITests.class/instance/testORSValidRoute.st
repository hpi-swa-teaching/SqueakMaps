as yet unclassified
testORSValidRoute

	| route longLatStart longLatEnd transportationMode |
	
	"Coordinates do not have an influence on the output, but are neccessary 
	to execute the method. However these are valid coordinates."
	longLatStart := 13.117216@52.388978.
	longLatEnd := 13.128289@52.393838.
	transportationMode := #car.
	self orsAPI contentSource expectedReturn: #validRoute.
	
	route := self orsAPI getRouteFrom: longLatStart To: longLatEnd By: transportationMode.
	
	self assert: route boundingBox height > 0.
	self assert: route boundingBox width > 0.
	self assert: route points notEmpty.
	self assert: route distance > 0.
	self assert: route duration > 0.
	