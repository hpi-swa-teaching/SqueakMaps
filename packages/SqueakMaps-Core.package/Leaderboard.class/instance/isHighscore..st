as yet unclassified
isHighscore: aScore

	entries size < 5 ifTrue: [^ true].
	
	^ (aScore > entries last score)