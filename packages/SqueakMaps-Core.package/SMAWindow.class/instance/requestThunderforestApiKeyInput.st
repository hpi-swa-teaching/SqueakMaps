select api
requestThunderforestApiKeyInput

	self class thunderforestMapsApiKey: (UIManager default request: 'Please enter your Thunderforest Maps Api Key').
	self thunderforestMapsApiKeyIsValid
		ifTrue: [^ true];
		ifFalse: [self informInvalidKey. 
				^ false]