building
buildCloseButton

	self closeButton: (PluggableButtonMorph new
		label: 'Close';
		target: [self closeLeaderboard];
		actionSelector: #value;
		yourself)
