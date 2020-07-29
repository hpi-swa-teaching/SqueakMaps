as yet unclassified
testApiButtonThunderforestInvalidKey
	| invalidKey tileSourceBefore |
	invalidKey := 'Test'.
	tileSourceBefore := self subject tiledMapMorph tileSource class.
	[apiButton click] valueSupplyingAnswers: {{'choose mapmode' . 'Cycling [Thunderforest]'} . {'Please enter your Thunderforest Maps Api Key' . invalidKey} . {'Invalid key, please try again'. #closeDialog}}.
	self assert: tileSourceBefore equals: self subject tiledMapMorph tileSource class.