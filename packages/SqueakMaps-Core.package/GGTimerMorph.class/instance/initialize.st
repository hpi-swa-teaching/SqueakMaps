initialization
initialize

	super initialize.
	self color: Color transparent.
	self running: false.
	self remainingSeconds: self defaultSeconds.
	self label: (StringMorph contents: '01:00').
	self addMorph: self label.
	self formatTime