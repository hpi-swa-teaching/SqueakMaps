tests
testBingApiKeyIsValidWithValidKey

	SMAWindow bingApiKey: validBingMapsKey.
	self assert: true equals: self subject bingApiKeyIsValid