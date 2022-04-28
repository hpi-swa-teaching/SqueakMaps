select api
bingApiKeyIsValid

	| response |

	response := WebClient new httpGet: (self bingKeyCheckURL, self class bingApiKey).
	^ response isSuccess