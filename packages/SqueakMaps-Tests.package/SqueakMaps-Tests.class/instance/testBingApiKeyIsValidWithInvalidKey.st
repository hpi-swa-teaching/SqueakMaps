api key validation
testBingApiKeyIsValidWithInvalidKey
	| oldKey |
	
	oldKey := SqueakMapsWindow bingApiKey.
	
	SqueakMapsWindow bingApiKey: 'Hallihallo'.
	self assert: false equals: squeakMapsWindow bingApiKeyIsValid.
	
	SqueakMapsWindow bingApiKey: oldKey