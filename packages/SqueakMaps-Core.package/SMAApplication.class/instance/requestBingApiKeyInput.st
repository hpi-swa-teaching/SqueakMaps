select api
requestBingApiKeyInput

	self bingApi class apiKey: (UIManager default request: 'Please enter your Bing Maps Api Key').
	self bingApi keyIsValid
		ifTrue: [^ true];
		ifFalse: [
			self informInvalidKey. 
			^ false]