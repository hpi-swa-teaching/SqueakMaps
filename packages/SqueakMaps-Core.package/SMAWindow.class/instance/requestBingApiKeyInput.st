select api
requestBingApiKeyInput
	SMAWindow bingApiKey: (UIManager default request: 'BingApi Key eingeben').
	self bingApiKeyIsValid
		ifTrue: [^true];
		ifFalse: [self informInvalidKey. ^false]