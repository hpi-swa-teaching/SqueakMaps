select api
requestBingApiKeyInput
	self class bingApiKey: (UIManager default request: 'Please enter your Bing Maps Api Key').
	self bingApiKeyIsValid
		ifTrue: [^true];
		ifFalse: [self informInvalidKey. ^false]