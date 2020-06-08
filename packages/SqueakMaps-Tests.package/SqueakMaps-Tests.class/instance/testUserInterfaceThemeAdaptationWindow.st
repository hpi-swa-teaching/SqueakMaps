user theme adaption
testUserInterfaceThemeAdaptationWindow
	| theme expectedColor |
	theme := SolarizedTheme new.
	theme applyTo: {squeakMapsWindow}.
	expectedColor := squeakMapsWindow userInterfaceTheme color.
	self assert: expectedColor equals: squeakMapsWindow color.
	
	theme := MonokaiTheme new.
	theme applyTo: {squeakMapsWindow}.
	expectedColor := squeakMapsWindow userInterfaceTheme color.
	self assert: expectedColor equals: squeakMapsWindow color