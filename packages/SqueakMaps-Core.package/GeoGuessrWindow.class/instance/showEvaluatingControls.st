game flow
showEvaluatingControls
	"Last round closes the game instead of advancing."

	self startButton visible: false.
	self quitButton visible: false.
	self backButton visible: true.
	self einloggenButton
		label: (gameOrchestrator levelManager hasMoreLevels
			ifTrue: ['Next round']
			ifFalse: ['End game'])
		font: self geoGuessrButtonFont;
		visible: true
