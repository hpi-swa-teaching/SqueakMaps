running
tearDown

	model ifNotNil: [
		model bingApi class apiKey: bingMapsKeyBefore.
		model thunderforestMapsApi class apiKey: thunderforestMapsKeyBefore].
	super tearDown