select api
setBingAsApiWith: aTileSource

	self bingApiKeyIsValid
		ifTrue: [self setTileSourceTo: aTileSource];
		ifFalse: [self requestBingApiKeyInput ifTrue: [self setTileSourceTo: aTileSource]]