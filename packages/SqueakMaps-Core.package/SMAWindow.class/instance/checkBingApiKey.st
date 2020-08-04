select api
checkBingApiKey

	self bingApiKeyIsValid
		ifTrue: [^ true];
		ifFalse: [^ self requestBingApiKeyInput]