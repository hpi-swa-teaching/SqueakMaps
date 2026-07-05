as yet unclassified
isHighscore: aScore

	entries size < self capacity ifTrue: [^ true].
	
	^ (aScore > entries last score)