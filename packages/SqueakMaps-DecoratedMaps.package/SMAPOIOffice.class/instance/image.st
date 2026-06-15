as yet unclassified
image

	| loader |
	loader := GitAssetLoader for: 'SqueakMaps'.
	
	^ (loader loadAsset: 'assets/img/people/', internalName, '_64.png') ifNil: [loader loadAsset: 'assets/img/people/default_64.png']