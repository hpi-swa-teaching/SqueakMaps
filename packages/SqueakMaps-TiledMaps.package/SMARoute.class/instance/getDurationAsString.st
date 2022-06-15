as yet unclassified
getDurationAsString

	^ self duration isNil
		ifTrue: [String empty]
		ifFalse: [
			| hours minutes |
			hours := (self duration / 3600) floor.
			minutes := (self duration / 60 - (hours * 60)) rounded.
			hours asString , 'h ',  minutes asString, 'min']