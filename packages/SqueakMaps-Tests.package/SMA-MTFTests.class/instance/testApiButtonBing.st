as yet unclassified
testApiButtonBing

	[apiButton click] valueSupplyingAnswer: {'choose mapmode' . 'SimpleMap gray [Bing]'}.
	self assert: self subject tiledMapMorph tileSource class equals: BingMapsTileSource