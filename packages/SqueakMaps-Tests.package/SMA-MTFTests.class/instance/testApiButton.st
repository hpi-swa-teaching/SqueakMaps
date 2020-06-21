as yet unclassified
testApiButton
	
	[apiButton click] valueSupplyingAnswer: {'' . 'Cycling [Thunderforest]'}.
	self assert: self subject tiledMapMorph tileSource class equals: ThunderforestTileSource