as yet unclassified
testApiButton
	
	[apiButton click] valueSupplyingAnswer: {'choose mapmode' . 'Cycling [Thunderforest]'}.
	self assert: self subject tiledMapMorph tileSource class equals: ThunderforestTileSource