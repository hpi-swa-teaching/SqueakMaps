building
buildHomeQuitButton
	"Closes the whole GeoGuessr window. Only offered on the home screen."

	self homeQuitButton: (PluggableButtonMorph new
		label: 'Quit';
		target: [self delete];
		actionSelector: #value;
		yourself)
