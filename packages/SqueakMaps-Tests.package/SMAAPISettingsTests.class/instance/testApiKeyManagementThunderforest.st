tests
testApiKeyManagementThunderforest

	| testThunderforestApiKey |
	
	testThunderforestApiKey := 'Test'.
	[apiKeyManagementButton click] valueSupplyingAnswers: {
		{ 'choose key to edit' . 'Thunderforest Maps' } . 
		{ 'Your Thunderforest Maps Api Key' . testThunderforestApiKey } }.
	self assert: testThunderforestApiKey equals: model thunderforestMapsApi class apiKey