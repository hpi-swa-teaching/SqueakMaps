as yet unclassified
testApiButtonThunderforestInvalidKey
	
	| invalidKey |
	
	invalidKey := 'Test'.
	[apiButton click] valueSupplyingAnswers: {{'choose mapmode' . 'Cycling [Thunderforest]'} . {'Please enter your Thunderforest Maps Api Key' . invalidKey} . {'Invalid key, please try again'. #closeDialog}}.
	self assert: tileSourceBefore equals: self subject tiledMapMorph tileSource