acceptanceTests
testThunderforstMapsApiKeyIsValidWithInvalidKey
	| oldKey |
	
	oldKey := SMAWindow thunderforestMapsApiKey.
	
	SMAWindow thunderforestMapsApiKey: 'Hallihallo'.
	self assert: self subject thunderforestMapsApiKeyIsValid equals: false.
	
	SMAWindow thunderforestMapsApiKey: oldKey