as yet unclassified
setUp
	self wantsToTest: (SMAWindow new extent: 200@200; fullBounds; yourself).
	apiButton := self subject findByLabel: 'select api'.
	apiKeyManagementButton := self subject findByLabel: 'manage api keys'.
	
	validBingMapsKey := 'As0hKwzwtzjektE1tZjvbu9avq4rNTv-912mAwljGQW36mgK5goGLckisoPMZXjx'.
	validThunderforestMapsKey := 'c7d61f25a9d84521b9e49cad7cc9534f'.
	
	BingMapsKeyBefore := SMAWindow bingApiKey.
	ThunderforestMapsKeyBefore := SMAWindow thunderforestMapsApiKey.
	
	tileSourceBefore := self subject tiledMapMorph tileSource