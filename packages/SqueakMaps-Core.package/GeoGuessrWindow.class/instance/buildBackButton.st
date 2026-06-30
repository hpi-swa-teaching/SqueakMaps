building
buildBackButton
	"Aborts the running game and returns to the home screen. Hidden until a round is playing."

	self backButton: (PluggableButtonMorph new
		label: 'Back';
		target: [self returnToStartScreen];
		actionSelector: #value;
		visible: false;
		yourself)
