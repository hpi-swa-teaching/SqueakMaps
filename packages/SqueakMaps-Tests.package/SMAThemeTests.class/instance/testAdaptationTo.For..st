theme testing
testAdaptationTo: anUserInterfaceTheme For: anObject
	| themeRequest expectedColor |
	anUserInterfaceTheme applyTo: {anObject}.
	themeRequest := UserInterfaceThemeRequest new
		target: anObject;
		theme: anUserInterfaceTheme;
		yourself.
	expectedColor := themeRequest color.
	self assert: expectedColor equals: anObject color