initialization
initialize

	super initialize.
	self color: Color transparent.
	running := false.
	remainingSeconds := self defaultSeconds.
	label := StringMorph contents: '01:00'.
	self addMorph: label.
	self formatTime