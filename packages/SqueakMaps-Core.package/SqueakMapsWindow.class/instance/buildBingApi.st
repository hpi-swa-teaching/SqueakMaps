select api
buildBingApi

	^ (BingMapsApi new apikey: SqueakMapsWindow bingApiKey)