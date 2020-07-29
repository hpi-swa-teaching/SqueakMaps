as yet unclassified
testApiButtonBing
	
	[apiButton click] valueSupplyingAnswers: {{'choose mapmode' . 'SimpleMap gray [Bing]'} . {'Please enter your Bing Maps Api Key' . validBingMapsKey}}.
	self assert: self subject tiledMapMorph tileSource class equals: BingMapsTileSource