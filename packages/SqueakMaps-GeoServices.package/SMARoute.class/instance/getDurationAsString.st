calculating
getDurationAsString
	"Calculates hours and minutes from seconds and returns as String."
	
	| hours minutes | 

	^ self duration isNil
		ifTrue: [String empty]
		ifFalse: [
			hours := (self duration / (60 * 60)) floor.
			minutes := (self duration / 60 - (hours * 60)) rounded.
			hours asString , 'h ',  minutes asString, 'min']