select api
setAsApi: anApi with: aTileSource

	(anApi = #Bing)
		ifTrue: [self setBingAsApiWith: aTileSource].
	(anApi = #Thunderforest)
		ifTrue: [self setThunderforestAsApiWith: aTileSource].