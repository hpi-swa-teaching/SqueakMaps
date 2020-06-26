select api
requestBingApiKeyInput
	SMAWindow bingApiKey: (UIManager default request: 'Please input your Bing Maps Api Key').
	self bingApiKeyIsValid
		ifTrue: [^true];
		ifFalse: [self informInvalidKey. ^false]