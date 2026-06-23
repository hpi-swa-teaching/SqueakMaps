running
setUp

	model := SMAApplication new.
	self wantsToTest: model build.
	apiButton := self subject findByLabel: 'Manage APIs'.
	
	validThunderforestMapsKey := 'd3dff8ca79bd4f19b20683efd1f24e07'.
	
	thunderforestMapsKeyBefore := model thunderforestMapsApi class apiKey.
	
	model thunderforestMapsApi class apiKey: nil.
	tileSourceBefore := model tiledMapMorph tileSource