user theme adaption
testUserInterfaceThemeAdaptationFor: anObject
	| theme expectedColor |
	theme := SolarizedTheme new.
	theme applyTo: {anObject}.
	expectedColor := anObject userInterfaceTheme color.
	self assert: expectedColor equals: anObject color.
	
	theme := MonokaiTheme new.
	theme applyTo: {anObject}.
	expectedColor := anObject userInterfaceTheme color.
	self assert: expectedColor equals: anObject color