displaying
showIn: aWindow

	| closeButton |
	self color: (Color white alpha: 0.75).
	aWindow addMorph: self frame: (0.3 @ 0.3 extent: 0.4 @ 0.3).
	closeButton := aWindow buttonLabeled: 'Close' action: [self close].
	self addMorph: closeButton.
	closeButton position: self width * 14.3 @ (self height * 7.1).
	self addTitle.
	self addEntries
