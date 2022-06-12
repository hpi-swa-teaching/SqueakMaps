as yet unclassified
isApiKeyValid
	
	| queryUrl json errorField result error1 error2 error3|
	
	queryUrl := self 
		queryUrlFrom: (0.0 @ 0.0) 
		To: (0.0 @ 0.0)
		By: (self defaultTransportationMode).
	json := self contentSource getJsonFrom: queryUrl.
	errorField := json at: 'error'.
		
	error1 := 'Authorization field/api_key missing in request. If you do not have a token, please sign up for one at https://openrouteservice.org'.
	error2 := 'Daily quota reached or API key unauthorized'.
	error3 := 'Authorization field missing'.
	result := ((errorField = error1 or: [errorField = error2 or: [errorField = error2]]) not).	
	
	^ result