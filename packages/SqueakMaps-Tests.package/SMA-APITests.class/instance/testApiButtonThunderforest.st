as yet unclassified
testApiButtonThunderforest
	
	[apiButton click] valueSupplyingAnswers: {{'choose mapmode' . 'Cycling [Thunderforest]'} . {'Please enter your Thunderforest Maps Api Key' . validThunderforestMapsKey}}.
	self assert: self subject tiledMapMorph tileSource class equals: ThunderforestTileSource