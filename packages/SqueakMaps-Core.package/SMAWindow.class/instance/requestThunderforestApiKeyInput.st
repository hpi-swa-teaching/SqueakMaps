select api
requestThunderforestApiKeyInput
	SMAWindow thunderforestMapsApiKey: (UIManager default request: 'ThunderforestMapsApi Key eingeben').
	self thunderforestMapsApiKeyIsValid
		ifTrue: [^true];
		ifFalse: [self informInvalidKey. ^false]