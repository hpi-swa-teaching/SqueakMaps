select api
buildBingApi

	^ (BingMapsApi new apikey: self class bingApiKey)