as yet unclassified
initialize 

	super initialize.
	self projectName: 'SqueakMaps'.
	self gitLoader: (GitAssetLoader for: self projectName).
	self gitLoader basePath: 'assets'.
