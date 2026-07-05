tests
testThunderforestMapsApiKeyIsValidWithValidKey

	self model thunderforestMapsApi class apiKey: self validThunderforestMapsKey.
	self assert: true equals: self model thunderforestMapsApi keyIsValid