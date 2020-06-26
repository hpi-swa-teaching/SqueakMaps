select api
requestThunderforestApiKeyInput
	SMAWindow thunderforestMapsApiKey: (UIManager default request: 'Please input your Thunderforest Maps Api Key').
	self thunderforestMapsApiKeyIsValid
		ifTrue: [^true];
		ifFalse: [self informInvalidKey. ^false]