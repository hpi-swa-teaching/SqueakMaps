running
setUp

	model := SMAApplication new.
	model initializeMap.

	self wantsToTest: model build.

	apiButton := self subject findByLabel: 'Select API'.
	apiKeyManagementButton :=
		self subject findByLabel: 'API Keys'.

	validBingMapsKey :=
		'As0hKwzwtzjektE1tZjvbu9avq4rNTv-912mAwljGQW36mgK5goGLckisoPMZXjx'.
	validThunderforestMapsKey :=
		'a230d55b21cb435b9bc67b9eb83c3053'.

	bingMapsKeyBefore := model bingApi class apiKey.
	thunderforestMapsKeyBefore :=
		model thunderforestMapsApi class apiKey.

	model bingApi class apiKey: nil.
	model thunderforestMapsApi class apiKey: nil.
	tileSourceBefore := model tiledMapMorph tileSource