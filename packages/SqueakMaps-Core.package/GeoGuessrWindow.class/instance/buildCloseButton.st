building
buildCloseButton

	self closeButton: (PluggableButtonMorph new
		label: 'Close' font: self geoGuessrButtonFont;
		target: [self closeLeaderboard];
		actionSelector: #value;
		yourself)
