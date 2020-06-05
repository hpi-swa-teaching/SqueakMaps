acceptanceTests
testThunderforstMapsApiKeyIsValidWithInvalidKey
	| oldKey |
	
	oldKey := SqueakMapsWindow thunderforestMapsApiKey.
	
	SqueakMapsWindow thunderforestMapsApiKey: 'Hallihallo'.
	self assert: self subject thunderforestMapsApiKeyIsValid equals: false.
	
	SqueakMapsWindow thunderforestMapsApiKey: oldKey