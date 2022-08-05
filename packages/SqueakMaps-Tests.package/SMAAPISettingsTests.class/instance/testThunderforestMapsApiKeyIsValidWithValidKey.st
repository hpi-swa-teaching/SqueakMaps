tests
testThunderforestMapsApiKeyIsValidWithValidKey

	model thunderforestMapsApi class apiKey: validThunderforestMapsKey.
	self assert: true equals: model thunderforestMapsApi keyIsValid