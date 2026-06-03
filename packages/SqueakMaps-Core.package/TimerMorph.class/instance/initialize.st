as yet unclassified
initialize

	super initialize.
	self color: Color transparent.
	remainingSeconds := 60.
	label := StringMorph contents: '01:00'.
	self addMorph: label.
	self formatTime