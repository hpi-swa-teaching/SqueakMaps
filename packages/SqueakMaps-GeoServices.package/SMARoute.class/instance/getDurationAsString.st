calculating
getDurationAsString
	"Calculate hours and minutes from seconds."
	
	| hourInSeconds hourInMinutes minuteInSeconds |
	
	minuteInSeconds := 60.
	hourInMinutes := 60.
	hourInSeconds := hourInMinutes * minuteInSeconds.

	^ self duration isNil
		ifTrue: [String empty]
		ifFalse: [
			| hours minutes |
			hours := (self duration / hourInSeconds) floor.
			minutes := (self duration / minuteInSeconds  - (hours * hourInMinutes)) rounded.
			hours asString , 'h ',  minutes asString, 'min']