tests
testThunderforestMapsApiKeyIsValidWithInvalidKey
	
	| invalidKey |
	
	invalidKey := 'Test'.
	SMAWindow thunderforestMapsApiKey: invalidKey.
	self assert: false equals: self subject thunderforestMapsApiKeyIsValid