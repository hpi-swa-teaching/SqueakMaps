as yet unclassified
testOpeningGitAsset

	| asset assetLoader assetPrefix contentPrefix |
	assetLoader := GitAssetLoader for: 'SqueakMaps'.
	asset := (assetLoader loadString: self OSMTestFileName) contents readStream.
	contentPrefix := '<?xml version='.
	assetPrefix := asset take: contentPrefix size.
	self assert: assetPrefix equals: contentPrefix