accessing
directoryModel

	directoryModel ifNil: [
		directoryModel := SMADirectoryModel new
			source: self tiledMapMorph;
			yourself].
	self tiledMapMorph ifNotNil: [
		directoryModel source: self tiledMapMorph].
	^ directoryModel
