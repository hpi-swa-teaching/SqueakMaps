tests
testThunderforestMapsApiKeyIsValidWithInvalidKey
	
	| invalidKey |
	
	invalidKey := 'Test'.
	model thunderforestMapsApi class apiKey: invalidKey.
	self assert: false equals: model thunderforestMapsApi keyIsValid