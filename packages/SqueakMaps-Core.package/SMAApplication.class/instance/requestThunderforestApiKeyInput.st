select api
requestThunderforestApiKeyInput

	self thunderforestMapsApi class apiKey: (UIManager default request: 'Please enter your Thunderforest Maps Api Key').
	self thunderforestMapsApi keyIsValid
		ifTrue: [^ true];
		ifFalse: [
			self informInvalidKey. 
			^ false]