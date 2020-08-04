select api
checkThunderforestMapsApiKey 

	self thunderforestMapsApiKeyIsValid
		ifTrue: [^ true];
		ifFalse: [^ self requestThunderforestApiKeyInput]