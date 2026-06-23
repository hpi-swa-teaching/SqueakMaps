building
buildMultiplayerButton

	self multiplayerButton: (PluggableButtonMorph new
		label: 'Multiplayer';
		target: [];
		actionSelector: #value;
		yourself)
