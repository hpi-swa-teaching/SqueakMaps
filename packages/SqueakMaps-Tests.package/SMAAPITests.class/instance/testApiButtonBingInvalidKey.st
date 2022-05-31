tests
testApiButtonBingInvalidKey
	
	| invalidKey |
	
	invalidKey := 'Test'.
	[apiButton click] valueSupplyingAnswers: {{'choose mapmode' . 'SimpleMap dark [Bing]'} . {'Please enter your Bing Maps Api Key' . invalidKey} . {'Invalid key, please try again'. #closeDialog}}.
	self assert: tileSourceBefore equals: model tiledMapMorph tileSource