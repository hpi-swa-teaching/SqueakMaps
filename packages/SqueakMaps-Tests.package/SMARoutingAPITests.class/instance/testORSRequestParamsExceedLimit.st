as yet unclassified
testORSRequestParamsExceedLimit

	| longLatStart longLatEnd transportationMode|
	
	"Coordinates do not have an influence on the output, but are neccessary 
	to execute the method. However these coordinates would result in an error from the
	real API."
	longLatStart := 23.671845 @70.671584.
	longLatEnd := -68.323636 @ -54.81924.
	transportationMode := #car.
	self orsAPI contentSource expectedReturn: #requestParamsExceedLimit.
	
	self should: [self orsAPI getRouteFrom: longLatStart To: longLatEnd By: transportationMode] 
		raise: Error
		whoseDescriptionIncludes: 'Request parameters exceed the server configuration limits.'
		description: 'Wrong error thrown'.
		
	