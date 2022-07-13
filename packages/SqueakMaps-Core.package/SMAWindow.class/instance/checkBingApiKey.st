select api
checkBingApiKey

	self bingApi keyIsValid 
		ifTrue: [^ true]
		ifFalse: [^ self requestBingApiKeyInput]