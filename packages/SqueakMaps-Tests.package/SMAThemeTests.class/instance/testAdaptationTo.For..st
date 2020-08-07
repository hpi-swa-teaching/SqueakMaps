theme testing
testAdaptationTo: anUserInterfaceTheme For: anObject
	| expectedColor |
	anUserInterfaceTheme applyTo: {anObject}.
	expectedColor := anObject userInterfaceTheme color.
	self assert: expectedColor equals: anObject color