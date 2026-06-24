tests
testApiButtonThunderforest
	
	| menu item |
	
	apiButton click.
	menu := ActiveWorld submorphs detect: [:m | m isKindOf: MenuMorph].
	item := menu items detect: [:m | m contents = 'Select API'].
	
	[ item target perform: item selector withArguments: item arguments.
	] valueSupplyingAnswers: {
		{ 'choose mapmode' . 'Cycling [Thunderforest]' } .
		{ 'Please enter your Thunderforest Maps Api Key' . validThunderforestMapsKey } }.
	self assert: SMAThunderforestTileSource equals: model tiledMapMorph tileSource class.
	
	menu delete