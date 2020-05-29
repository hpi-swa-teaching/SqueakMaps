select api
thunderforestMapsApiKeyIsValid
	| response |
	response := WebClient new httpGet: ('http://tile.thunderforest.com/landscape/0/0/0.png?apikey=', SqueakMapsWindow thunderforestMapsApiKey).
	^ response isSuccess