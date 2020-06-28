select api
requestBingApiKeyInput
	SMAWindow bingApiKey: (UIManager default request: 'Please enter your Bing Maps Api Key').
	self bingApiKeyIsValid
		ifTrue: [^true];
		ifFalse: [self informInvalidKey. ^false]