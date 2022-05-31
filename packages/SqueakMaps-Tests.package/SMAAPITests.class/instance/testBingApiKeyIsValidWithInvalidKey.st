tests
testBingApiKeyIsValidWithInvalidKey
	
	| invalidKey |
	
	invalidKey := 'Test'.
	SMAWindow bingApiKey: invalidKey.
	self assert: false equals: model bingApiKeyIsValid