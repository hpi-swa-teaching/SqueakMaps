running
setUp

	model := SMAApplication new.
	self wantsToTest: model build.
	apiButton := self subject findByLabel: 'Select API'.
	apiKeyManagementButton := self subject findByLabel: 'API Keys'.
	
	validBingMapsKey := 'As0hKwzwtzjektE1tZjvbu9avq4rNTv-912mAwljGQW36mgK5goGLckisoPMZXjx'.
	validThunderforestMapsKey := 'c7d61f25a9d84521b9e49cad7cc9534f'.
	
	bingMapsKeyBefore := model bingApi class apiKey.
	thunderforestMapsKeyBefore := model thunderforestMapsApi class apiKey.
	
	model bingApi class apiKey: nil.
	model thunderforestMapsApi class apiKey: nil.
	tileSourceBefore := model tiledMapMorph tileSource