select api
buildThunderforestApi

	^ (ThunderforestMapsApi new apikey: SqueakMapsWindow thunderforestMapsApiKey asString)