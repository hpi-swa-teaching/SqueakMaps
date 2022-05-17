accessing
thunderforestMapsApiKey

	^ ThunderforestMapsApiKey ifNil: [ThunderforestMapsApiKey := '' asString]