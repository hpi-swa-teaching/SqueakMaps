drawing
image

	| loader |
	loader := GitAssetLoader for: 'SqueakMaps'.
	
	^ (loader loadForm: 'assets/img/people/', internalName, '_64.png') ifNil: [loader loadForm: 'assets/img/people/default_64.png']