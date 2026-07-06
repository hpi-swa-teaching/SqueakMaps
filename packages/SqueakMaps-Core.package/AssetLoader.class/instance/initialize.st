as yet unclassified
initialize 

	super initialize.
	self projectName: 'SqueakMaps'.
	self gitLoader: self newGitLoader.
	self gitLoader basePath: 'assets'.
