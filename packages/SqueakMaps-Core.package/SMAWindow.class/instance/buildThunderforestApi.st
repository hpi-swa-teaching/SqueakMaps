select api
buildThunderforestApi

	^ (SMAThunderforestMapsApi new apikey: self class thunderforestMapsApiKey)