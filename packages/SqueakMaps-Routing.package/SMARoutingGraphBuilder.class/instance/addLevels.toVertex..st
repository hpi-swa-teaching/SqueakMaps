building
addLevels: levels toVertex: vertexIndex

	| currentLevels |
	levels ifNil: [^ self].
	currentLevels := vertexLevels at: vertexIndex.
	levels do: [:level |
		(currentLevels includes: level) ifFalse: [currentLevels add: level]]
