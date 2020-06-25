select api
setThunderforestAsApiWith: aTileSource
	
	self thunderforestMapsApiKeyIsValid
		ifTrue: [self setTileSourceTo: aTileSource;
					refreshMap];
		ifFalse: [self requestThunderforestApiKeyInput ifTrue: [self setTileSourceTo: aTileSource]]