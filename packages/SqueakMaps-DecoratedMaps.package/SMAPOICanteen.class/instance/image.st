accessing
image

	| loader |
	loader := GitAssetLoader for: 'SqueakMaps'.
	^ loader loadForm: 'assets/img/icon-lunch.png'