select api
buildThunderforestApi

	^ (ThunderforestMapsApi new apikey: self class thunderforestMapsApiKey)