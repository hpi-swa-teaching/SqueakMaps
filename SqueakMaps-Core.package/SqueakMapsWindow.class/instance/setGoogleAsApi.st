select api
setGoogleAsApi

	|googleKey|
	(SqueakMapsWindow googleApiKey isNil)
		ifTrue: [googleKey := UIManager default request: 'GoogleApi Key eingeben'.
				SqueakMapsWindow googleApiKey: googleKey].
	self tiledMapMorph tileSource: (GoogleMapsApi new apikey: SqueakMapsWindow googleApiKey asString) satelliteTileSource