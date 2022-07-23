json retrieval
getJsonFrom: aQueryUrlString

	| response json |
	
	response := WebClient httpGet: aQueryUrlString asString.
	json := Json readFrom: response content readStream.
	"Unauthorized, e.g. API Key is empty"
	response code = 401 ifTrue: [SMAInvalidApiKeyError signal: 'Api key is empty'].
	"Forbidden, e.g. API Key is invalid"
	response code = 403 ifTrue: [SMAInvalidApiKeyError signal: 'Api key is invalid'].
	
	^ json