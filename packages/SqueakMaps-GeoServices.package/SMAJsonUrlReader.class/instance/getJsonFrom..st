json retrieval
getJsonFrom: aQueryUrlString

	| response |
	
	response := WebClient new
		httpGet: aQueryUrlString asString
		do: [:request |
			request
				headerAt: 'User-Agent'
				put: 'SqueakMaps'.
			request
				headerAt: 'Accept'
				put: 'application/json, application/geo+json, application/gpx+xml, img/png; charset=utf-8'].
	"Unauthorized, e.g. API Key is empty"
	response code = 401 ifTrue: [SMAInvalidApiKeyError signal: 'Api key is empty'].
	"Forbidden, e.g. API Key is invalid"
	response code = 403 ifTrue: [SMAInvalidApiKeyError signal: 'Api key is invalid'].
	
	^ Json readFrom: response content readStream