select api
setThunderforestAsApiWith: aTileSourceSymbol

	| tileSourceCreationMessage |
	
	tileSourceCreationMessage := (Message selector: aTileSourceSymbol).
	self checkThunderforestMapsApiKey
		ifTrue: [self tiledMapMorph tileSource: (tileSourceCreationMessage sendTo: (self thunderforestMapsApi))]