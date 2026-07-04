route management
createWaitingScreen: bounds
	
	| overlay label |
	overlay := self createOverlayFor: bounds.
	label := TextMorph new
		contents: 'Calculating route...';
		yourself.
	overlay addMorph: label.
	label center: overlay center.
	^ overlay