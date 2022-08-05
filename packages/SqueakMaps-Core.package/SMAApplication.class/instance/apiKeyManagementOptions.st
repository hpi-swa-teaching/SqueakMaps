select api
apiKeyManagementOptions

	^ Dictionary newFrom: {
		Association key: 'Openrouteservice' value: [
			SMAORSRoutingAPI apiKey:
				(UIManager default request: 'Your Openrouteservice Api Key' initialAnswer: SMAORSRoutingAPI apiKey)]. 
		Association key: 'Bing Maps' value: [
			SMABingMapsApi apiKey:
				(UIManager default request: 'Your Bing Maps Api Key' initialAnswer: ((self bingApi class) apiKey))]. 
		Association key: 'Thunderforest Maps' value: [
			SMAThunderforestMapsApi apiKey: 
				(UIManager default request: 'Your Thunderforest Maps Api Key' initialAnswer: ((self thunderforestMapsApi class) apiKey))] }