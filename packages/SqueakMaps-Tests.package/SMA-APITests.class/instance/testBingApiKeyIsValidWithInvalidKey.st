as yet unclassified
testBingApiKeyIsValidWithInvalidKey
	| invalidKey |
	invalidKey := 'Test'.
	SMAWindow bingApiKey: invalidKey.
	self assert: false equals: self subject bingApiKeyIsValid.