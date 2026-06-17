as yet unclassified
contentStream

	| asset |
	asset := (GitAssetLoader for: 'SqueakMaps') loadAssetFile: path.
	asset ifNil: [^ nil].
	^ asset contents readStream