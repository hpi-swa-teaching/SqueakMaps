select api
setBingAsApiWith: aTileSourceSymbol
	
	self checkBingApiKey
		ifTrue: [
			self tiledMapMorph tileSource: (self bingApi perform: aTileSourceSymbol).
			self tiledMapMorph layoutChanged]