accessing
imageFormFor: aPath

	| loader form |
	loader := GitAssetLoader for: 'SqueakMaps'.
	form := [loader loadForm: aPath] on: Error do: [nil].
	form ifNil: [^ self placeholderImageForm].
	^ form
