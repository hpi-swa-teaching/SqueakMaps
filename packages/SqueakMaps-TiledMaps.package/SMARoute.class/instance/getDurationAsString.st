as yet unclassified
getDurationAsString

	"^ self duration isNil
		ifTrue: [String empty]
		ifFalse: [(self duration / 3600) floor asString , 'h ', (self duration / 60) rounded asString , 'min']."
	^ self duration asString.