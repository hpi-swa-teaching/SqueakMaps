game flow
showEvaluatingControls
	"Last round closes the game instead of advancing."

	self startButton visible: false.
	self einloggenButton
		label: (gameOrchestrator levelManager hasMoreLevels
			ifTrue: ['Nächste Runde']
			ifFalse: ['Spiel beenden']);
		visible: true
