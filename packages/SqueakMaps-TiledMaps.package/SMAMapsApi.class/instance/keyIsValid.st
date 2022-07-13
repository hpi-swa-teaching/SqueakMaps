tile source
keyIsValid

	| response |

	response := WebClient new httpGet: (self keyCheckURL, self class apiKey).
	^ response isSuccess