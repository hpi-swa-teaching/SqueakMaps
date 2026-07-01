building
buildHomeQuitButton
	"Closes the whole GeoGuessr window. Only offered on the home screen."

	self homeQuitButton: (PluggableButtonMorph new
		label: 'Quit' font: self geoGuessrButtonFont;
		target: [self delete];
		actionSelector: #value;
		yourself)
