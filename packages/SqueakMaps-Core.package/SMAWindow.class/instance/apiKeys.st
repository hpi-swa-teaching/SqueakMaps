select api
apiKeys

	^ Dictionary newFrom:
		{Association key: 'Bing Maps' value: [SMAWindow bingApiKey: (UIManager default request: 'Your Bing Maps Api Key' initialAnswer: SMAWindow bingApiKey)]. 
		Association key: 'Thunderforest Maps' value: [SMAWindow thunderforestMapsApiKey: (UIManager default request: 'Your Thunderforest Maps Api Key' initialAnswer: SMAWindow thunderforestMapsApiKey)]}