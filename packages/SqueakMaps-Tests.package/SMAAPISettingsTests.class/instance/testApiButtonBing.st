tests
testApiButtonBing
	
	[apiButton click] valueSupplyingAnswers: { 
		{ 'choose mapmode' . 'SimpleMap gray [Bing]' } . 
		{ 'Please enter your Bing Maps Api Key' . validBingMapsKey } }.
	self assert: SMABingMapsTileSource equals: model tiledMapMorph tileSource class