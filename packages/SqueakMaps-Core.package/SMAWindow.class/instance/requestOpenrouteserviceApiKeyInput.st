select api
requestOpenrouteserviceApiKeyInput

	| apiKey |
	
	apiKey := (UIManager default request: 'Please enter your Openrouteservice Api Key').
	apiKey ifNotEmpty: [self setOpenrouteserviceAsApi]