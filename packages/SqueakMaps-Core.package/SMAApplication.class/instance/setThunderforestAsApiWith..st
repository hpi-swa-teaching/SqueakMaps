select api
setThunderforestAsApiWith: aTileSourceSymbol

	self checkThunderforestMapsApiKey
		ifTrue: [self tiledMapMorph tileSource: 
					(self thunderforestMapsApi perform: aTileSourceSymbol)]