as yet unclassified
testApiButtonBing
	
	[apiButton click] valueSupplyingAnswers: {{'choose mapmode' . 'SimpleMap gray [Bing]'} . {'Please enter your Bing Maps Api Key' . validBingMapsKey}}.
	self assert: BingMapsTileSource equals: self subject tiledMapMorph tileSource class