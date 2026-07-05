running
setUp

	self model: SMAApplication new.
	self wantsToTest: self model build.
	self apiButton: (self subject findByLabel: 'Manage APIs').
	
	self validThunderforestMapsKey: 'd3dff8ca79bd4f19b20683efd1f24e07'.
	
	self thunderforestMapsKeyBefore: model thunderforestMapsApi class apiKey.
	
	self model thunderforestMapsApi class apiKey: nil.
	self tileSourceBefore: self model tiledMapMorph tileSource