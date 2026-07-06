reporting
save: contents as: fileName
	| stream |
	stream := (FileDirectory on: Smalltalk imagePath) forceNewFileNamed: fileName.
	[stream nextPutAll: contents]
		ensure: [stream close]
