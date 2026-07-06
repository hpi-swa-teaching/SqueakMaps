accessing
imageFormFor: aPath

	| loader form |
	loader := GitAssetLoader for: 'SqueakMaps'.
	form := [loader loadForm: aPath] on: Exception do: [nil].
	form ifNil: [^ self placeholderImageForm].
	^ form
