information
isHighscore: aScore

	self entries size < self capacity ifTrue: [^ true].
	
	^ (aScore > self entries last score)