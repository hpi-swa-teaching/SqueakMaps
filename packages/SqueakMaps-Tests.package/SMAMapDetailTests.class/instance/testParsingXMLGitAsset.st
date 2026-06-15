as yet unclassified
testParsingXMLGitAsset

	| asset assetLoader numPoints root xmldoc |
	assetLoader := GitAssetLoader for: 'SqueakMaps'.
	asset := (assetLoader loadString: 'assets/osm/test.osm') contents readStream.
	xmldoc := XMLDOMParser parseDocumentFrom: asset.
	root := xmldoc root.
	numPoints := 0.
	root tagsNamed: #node do: [:p | (p attributeAt: #id) asNumber < 0 ifTrue: [numPoints := numPoints + 1]].
	self assert: 8 equals: numPoints