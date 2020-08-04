as yet unclassified
testApiButtonThunderforest
	
	[apiButton click] valueSupplyingAnswers: {{'choose mapmode' . 'Cycling [Thunderforest]'} . {'Please enter your Thunderforest Maps Api Key' . validThunderforestMapsKey}}.
	self assert: ThunderforestTileSource equals: self subject tiledMapMorph tileSource class