as yet unclassified
initialize 

	super initialize.
	self projectName: 'swt26-g06'.
	self gitLoader: (GitAssetLoader for: self projectName).
	self gitLoader basePath: 'assets'.
	