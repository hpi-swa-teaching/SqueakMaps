api key validation
testBingApiKeyIsValidWithInvalidKey
	| oldKey |
	
	oldKey := SMAWindow bingApiKey.
	
	SMAWindow bingApiKey: 'Hallihallo'.
	self assert: false equals: squeakMapsWindow bingApiKeyIsValid.
	
	SMAWindow bingApiKey: oldKey