select api
setThunderforestAsApiWith: aTileSourceSymbol
	| tileSourceCreationMessage |
	tileSourceCreationMessage := (Message selector: aTileSourceSymbol).
	self thunderforestMapsApiKeyIsValid
		ifTrue: [self setTileSourceTo: (tileSourceCreationMessage sendTo: (self buildThunderforestApi))];
		ifFalse: [self requestThunderforestApiKeyInput ifTrue: [self setTileSourceTo: (tileSourceCreationMessage sendTo: (self buildThunderforestApi))]]