tests
testThunderforestMapsApiKeyIsValidWithValidKey

	SMAWindow thunderforestMapsApiKey: validThunderforestMapsKey.
	
	self assert: true equals: self subject thunderforestMapsApiKeyIsValid