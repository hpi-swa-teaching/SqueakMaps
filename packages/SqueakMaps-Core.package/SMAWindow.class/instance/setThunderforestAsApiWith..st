select api
setThunderforestAsApiWith: aTileSource
	
	self thunderforestMapsApiKeyIsValid
		ifTrue: [self setTileSourceTo: aTileSource];
		ifFalse: [self requestThunderforestApiKeyInput ifTrue: [self setTileSourceTo: aTileSource]]