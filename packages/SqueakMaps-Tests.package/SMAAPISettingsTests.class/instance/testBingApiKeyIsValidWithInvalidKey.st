tests
testBingApiKeyIsValidWithInvalidKey
	
	| invalidKey |
	
	invalidKey := 'Test'.
	model bingApi class apiKey: invalidKey.
	self assert: false equals: model bingApi keyIsValid