building
buildBackButton
	"Aborts the running game and returns to the home screen. Hidden until a round is playing."

	self backButton: ((self buttonLabeled: 'Back' action: [self returnToStartScreen]) visible: false; yourself)
