select api
bingApiKeyIsValid
	| response |
	response := WebClient new httpGet: ('http://dev.virtualearth.net/REST/v1/Locations?q=Berlin&o=json&key=', SMAWindow bingApiKey).
	^ response isSuccess