select api
readStreamForOSMAssetNamed: anAssetName

	^ (self assetLoader loadAsset: anAssetName) readStream