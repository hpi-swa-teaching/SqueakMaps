tests
testApiKeyManagementThunderforest

	| testThunderforestApiKey menu item |
	
	testThunderforestApiKey := 'Test'.
	apiButton click. 
	menu := ActiveWorld submorphs detect: [:m | m isKindOf: MenuMorph].
	item := menu items detect: [:m | m contents = 'API Keys'].
	
	[ item target perform: item selector withArguments: item arguments.
	] valueSupplyingAnswers: {
		{ 'choose key to edit' . 'Thunderforest Maps' } . 
		{ 'Your Thunderforest Maps Api Key' . testThunderforestApiKey } }.
	self assert: testThunderforestApiKey equals: model thunderforestMapsApi class apiKey.
	
	menu delete.