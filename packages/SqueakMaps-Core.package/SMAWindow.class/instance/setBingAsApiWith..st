select api
setBingAsApiWith: aTileSourceSymbol
	
	| tileSourceCreationMessage |
	
	tileSourceCreationMessage := (Message selector: aTileSourceSymbol).
	self checkBingApiKey
		ifTrue: [self tiledMapMorph tileSource: (tileSourceCreationMessage sendTo: (self buildBingApi))]