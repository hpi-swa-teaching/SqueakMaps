json retrieval
getJsonFrom: aQueryUrlString

	| response |
	
	response := WebClient httpGet: aQueryUrlString asString.
	"Unauthorized, e.g. API Key is empty"
	response code = 401 ifTrue: [SMAInvalidApiKeyError signal: 'Api key is empty'].
	"Forbidden, e.g. API Key is invalid"
	response code = 403 ifTrue: [SMAInvalidApiKeyError signal: 'Api key is invalid'].
	
	^ Json readFrom: response content readStream.