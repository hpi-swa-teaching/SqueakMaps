as yet unclassified
isApiKeyValid: aMessageString
  
	| errorMessages |
    	
	errorMessages := {
		'Authorization field/api_key missing in request. If you do not have a token, please sign up for one at https://openrouteservice.org',
		'Daily quota reached or API key unauthorized',
		'Authorization field missing',
		 'Access to this API has been disallowed' }.
	^ (errorMessages contains: aMessageString) not