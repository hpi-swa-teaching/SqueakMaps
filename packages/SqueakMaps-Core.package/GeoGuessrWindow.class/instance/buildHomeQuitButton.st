building
buildHomeQuitButton
	"Closes the whole GeoGuessr window. Only offered on the home screen."

	self homeQuitButton: (self buttonLabeled: 'Quit' action: [self delete])
