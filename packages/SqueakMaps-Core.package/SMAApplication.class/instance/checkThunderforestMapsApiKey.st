select api
checkThunderforestMapsApiKey 

	self thunderforestMapsApi keyIsValid
		ifTrue: [^ true];
		ifFalse: [^ self requestThunderforestApiKeyInput]