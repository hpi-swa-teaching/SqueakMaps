tests
testApiButtonThunderforestInvalidKey
	
	| invalidKey |
	
	invalidKey := 'Test'.
	[apiButton click] valueSupplyingAnswers: {{'choose mapmode' . 'Transportation [Thunderforest]'} . {'Please enter your Thunderforest Maps Api Key' . invalidKey} . {'Invalid key, please try again'. #closeDialog}}.
	self assert: tileSourceBefore equals: model tiledMapMorph tileSource