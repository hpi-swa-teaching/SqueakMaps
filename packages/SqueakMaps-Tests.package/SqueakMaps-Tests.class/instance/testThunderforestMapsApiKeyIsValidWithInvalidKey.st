api key validation
testThunderforestMapsApiKeyIsValidWithInvalidKey
	| oldKey |
	
	oldKey := SqueakMapsWindow thunderforestMapsApiKey.
	
	SqueakMapsWindow thunderforestMapsApiKey: 'Hallihallo'.
	self assert: false equals: squeakMapsWindow thunderforestMapsApiKeyIsValid.
	
	SqueakMapsWindow bingApiKey: oldKey