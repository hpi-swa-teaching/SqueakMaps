select api
thunderforestMapsApiKeyIsValid

	| response |

	response := WebClient new httpGet: (self thunderforestKeyCheckURL, self class thunderforestMapsApiKey).
	^ response isSuccess