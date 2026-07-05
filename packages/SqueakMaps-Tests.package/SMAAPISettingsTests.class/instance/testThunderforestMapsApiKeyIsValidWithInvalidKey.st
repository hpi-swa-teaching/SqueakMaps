tests
testThunderforestMapsApiKeyIsValidWithInvalidKey
	
	| invalidKey |
	
	invalidKey := 'Test'.
	self model thunderforestMapsApi class apiKey: invalidKey.
	self assert: false equals: self model thunderforestMapsApi keyIsValid