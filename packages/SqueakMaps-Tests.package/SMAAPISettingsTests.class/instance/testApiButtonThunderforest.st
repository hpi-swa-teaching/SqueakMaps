tests
testApiButtonThunderforest
	
	| menu item |
	
	self apiButton click.
	menu := ActiveWorld submorphs detect: [:m | m isKindOf: MenuMorph].
	item := menu items detect: [:m | m contents = 'Select API'].
	
	[ item target perform: item selector withArguments: item arguments.
	] valueSupplyingAnswers: {
		{ 'choose mapmode' . 'Cycling [Thunderforest]' } .
		{ 'Please enter your Thunderforest Maps Api Key' . self validThunderforestMapsKey } }.
	self assert: SMAThunderforestTileSource equals: self model tiledMapMorph tileSource class.
	
	menu delete