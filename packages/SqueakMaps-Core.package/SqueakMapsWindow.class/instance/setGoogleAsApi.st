select api
setGoogleAsApi

	(SqueakMapsWindow googleApiKey isNil)
		ifTrue: [SqueakMapsWindow googleApiKey: (UIManager default request: 'GoogleApi Key eingeben')].
	self tiledMapMorph tileSource: (GoogleMapsApi new apikey: SqueakMapsWindow googleApiKey asString) satelliteTileSource