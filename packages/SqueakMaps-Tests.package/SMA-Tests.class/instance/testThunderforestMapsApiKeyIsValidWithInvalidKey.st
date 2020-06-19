api key validation
testThunderforestMapsApiKeyIsValidWithInvalidKey
	| oldKey |
	
	oldKey := SMAWindow thunderforestMapsApiKey.
	
	SMAWindow thunderforestMapsApiKey: 'Hallihallo'.
	self assert: false equals: squeakMapsWindow thunderforestMapsApiKeyIsValid.
	
	SMAWindow bingApiKey: oldKey