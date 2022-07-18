tests
testBingApiKeyIsValidWithValidKey

	model bingApi class apiKey: validBingMapsKey.
	self assert: true equals: model bingApi keyIsValid