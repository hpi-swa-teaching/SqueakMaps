running
setUp

	model := SMAWindow new.
	self wantsToTest: model build.
	apiButton := self subject findByLabel: 'Select API'.
	apiKeyManagementButton := self subject findByLabel: 'API Keys'.
	
	validBingMapsKey := 'As0hKwzwtzjektE1tZjvbu9avq4rNTv-912mAwljGQW36mgK5goGLckisoPMZXjx'.
	validThunderforestMapsKey := 'c7d61f25a9d84521b9e49cad7cc9534f'.
	
	BingMapsKeyBefore := SMAWindow bingApiKey.
	ThunderforestMapsKeyBefore := SMAWindow thunderforestMapsApiKey.
	
	SMAWindow bingApiKey: nil.
	SMAWindow thunderforestMapsApiKey: nil.
	tileSourceBefore := model tiledMapMorph tileSource