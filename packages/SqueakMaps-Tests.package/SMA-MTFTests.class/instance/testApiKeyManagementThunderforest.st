as yet unclassified
testApiKeyManagementThunderforest

	| originalThunderforestApiKey testThunderforestApiKey|
	
	originalThunderforestApiKey := SMAWindow thunderforestMapsApiKey.
	testThunderforestApiKey := 'Test'.
	[apiKeyManagementButton click] valueSupplyingAnswers: {{'choose key to edit' . 'Thunderforest Maps'} . {'Your Thunderforest Maps Api Key' . testThunderforestApiKey}}.
	self assert: testThunderforestApiKey equals: SMAWindow thunderforestMapsApiKey.
	SMAWindow thunderforestMapsApiKey: originalThunderforestApiKey