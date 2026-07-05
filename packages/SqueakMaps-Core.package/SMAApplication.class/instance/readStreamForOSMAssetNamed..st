select api
readStreamForOSMAssetNamed: anAssetName

	^ ((GitAssetLoader for: 'SqueakMaps')
		loadAsset: anAssetName) readStream