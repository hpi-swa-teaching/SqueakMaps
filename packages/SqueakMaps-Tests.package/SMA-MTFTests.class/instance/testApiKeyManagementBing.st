as yet unclassified
testApiKeyManagementBing

	| originalBingApiKey testBingApiKey|
	
	originalBingApiKey := SMAWindow bingApiKey.
	testBingApiKey := 'Test'.
	[apiKeyManagementButton click] valueSupplyingAnswers: {{'choose key to edit' . 'Bing Maps'} . {'Your Bing Maps Api Key' . testBingApiKey}}.
	self assert: testBingApiKey equals: SMAWindow bingApiKey.
	SMAWindow bingApiKey: originalBingApiKey