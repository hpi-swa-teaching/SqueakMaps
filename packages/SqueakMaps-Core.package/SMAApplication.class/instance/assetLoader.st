accessing
assetLoader

	^ assetLoader ifNil: [assetLoader := GitAssetLoader for: 'SqueakMaps']
