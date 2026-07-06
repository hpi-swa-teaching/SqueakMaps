updating
showEvaluating

	self startButton visible: false.
	self quitButton visible: false.
	self backButton visible: true.
	self einloggenButton
		label: (self window gameOrchestrator hasNextRound
			ifTrue: ['Next round']
			ifFalse: ['End game'])
		font: self window geoGuessrButtonFont;
		visible: true
