build buttons and input fields
setBingAsApi

	|string|
	(self bingApi isNil)
	ifTrue: [string := UIManager default request: 'BingApi Key eingeben'.
			string isEmpty ifTrue: [self setBingAsApi].
			self bingApi: (BingMapsApi new apikey: string asString).
		self api: self bingApi.
		self tiledMapMorph tileSource: self api aerialWithLabelsOnDemandTileSource]