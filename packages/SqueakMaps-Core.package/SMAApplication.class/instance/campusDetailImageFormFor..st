accessing
campusDetailImageFormFor: aPath

	| form |
	form := [self assetLoader loadForm: aPath] on: Error do: [nil].
	form ifNil: [^ self campusDetailPlaceholderImageForm].
	^ form
