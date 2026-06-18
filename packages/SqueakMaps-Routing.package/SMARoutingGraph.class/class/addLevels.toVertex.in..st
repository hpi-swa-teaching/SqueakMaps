as yet unclassified
addLevels: levels toVertex: vertexIndex in: vertexLevels

	| currentLevels |
	currentLevels := vertexLevels at: vertexIndex.
	levels do: [:level |
		(currentLevels includes: level) ifFalse: [currentLevels add: level]]