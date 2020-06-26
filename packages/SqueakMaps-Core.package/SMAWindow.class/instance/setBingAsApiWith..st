select api
setBingAsApiWith: aTileSourceSymbol
	| tileSourceCreationMessage |
	tileSourceCreationMessage := (Message selector: aTileSourceSymbol).
	self bingApiKeyIsValid
		ifTrue: [self setTileSourceTo: (tileSourceCreationMessage sendTo: (self buildBingApi))];
		ifFalse: [self requestBingApiKeyInput ifTrue: [self setTileSourceTo: (tileSourceCreationMessage sendTo: (self buildBingApi))]]