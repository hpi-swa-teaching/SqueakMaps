tests
testApiButtonThunderforest
	
	Smalltalk isHeadless ifTrue: [^ self].
	
	[apiButton click] valueSupplyingAnswers: {
		{ 'choose mapmode' . 'Cycling [Thunderforest]' } .
		{ 'Please enter your Thunderforest Maps Api Key' . validThunderforestMapsKey } }.
	self assert: SMAThunderforestTileSource equals: model tiledMapMorph tileSource class