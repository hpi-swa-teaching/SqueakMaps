select api
apiKeyManagementOptions

	^ Dictionary newFrom:
		{Association key: 'Bing Maps' 
			value: [self class bingApiKey: 
				(UIManager default request: 'Your Bing Maps Api Key' initialAnswer: self class bingApiKey)]. 
		Association key: 'Thunderforest Maps' 
			value: [self class thunderforestMapsApiKey: 
				(UIManager default request: 'Your Thunderforest Maps Api Key' initialAnswer: self class thunderforestMapsApiKey)]}