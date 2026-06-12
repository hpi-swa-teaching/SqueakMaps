as yet unclassified
contentStream

	| asset |

	asset := (GitAssetLoader for: 'SqueakMaps') loadAssetFile: path.
	^ asset ifNotNil: [asset contents readStream]