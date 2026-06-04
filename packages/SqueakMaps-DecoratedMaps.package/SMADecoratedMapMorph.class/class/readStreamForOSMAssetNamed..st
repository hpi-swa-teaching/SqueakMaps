as yet unclassified
readStreamForOSMAssetNamed: anAssetName

	^ ((GitAssetLoader for: 'SqueakMaps')
		loadAsset: anAssetName) readStream