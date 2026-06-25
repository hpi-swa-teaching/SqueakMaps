game flow
showEvaluatingControls
	"Last round closes the game instead of advancing."

	self startButton visible: false.
	self quitButton visible: false.
	self einloggenButton
		label: (gameOrchestrator isLastTurn
			ifTrue: ['End game']
			ifFalse: ['Next round']);
		visible: true
