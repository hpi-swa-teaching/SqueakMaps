acceptanceTests
testBingApiKeyIsValidWithInvalidKey
	| oldKey |
	
	oldKey := SqueakMapsWindow bingApiKey.
	
	SqueakMapsWindow bingApiKey: 'Hallihallo'.
	self assert: self subject bingApiKeyIsValid equals: false.
	
	SqueakMapsWindow bingApiKey: oldKey