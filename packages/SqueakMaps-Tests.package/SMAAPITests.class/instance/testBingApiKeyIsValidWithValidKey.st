tests
testBingApiKeyIsValidWithValidKey

	SMAWindow bingApiKey: validBingMapsKey.
	self assert: true equals: model bingApiKeyIsValid