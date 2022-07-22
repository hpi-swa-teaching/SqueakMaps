select api
apiKeyManagementOptions

	^ Dictionary newFrom:
		{ Association key: 'Openrouteservice' 
			value: [self openrouteserviceApi class apiKey: 
				(UIManager default request: 'Your Openrouteservice Api Key' initialAnswer: (self openrouteserviceApi class) ApiKey)]. 
		Association key: 'Bing Maps' 
			value: [self bingApi class apiKey: 
				(UIManager default request: 'Your Bing Maps Api Key' initialAnswer: ((self bingApi class) apiKey))]. 
		Association key: 'Thunderforest Maps' 
			value: [self thunderforestMapsApi class apiKey: 
				(UIManager default request: 'Your Thunderforest Maps Api Key' initialAnswer: ((self thunderforestMapsApi class) apiKey))] }