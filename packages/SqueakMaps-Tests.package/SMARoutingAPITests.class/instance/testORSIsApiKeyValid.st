as yet unclassified
testORSIsApiKeyValid
	
	self orsAPI contentSource expectedReturn: #noApiKey.
	self assert: false equals: self orsAPI isApiKeyValid.
	self orsAPI contentSource expectedReturn: #wrongApiKey.
	self assert: false equals: self orsAPI isApiKeyValid.
	self orsAPI contentSource expectedReturn: #correctApiKey.
	self assert: true equals: self orsAPI isApiKeyValid
		
	