game flow
showEndedState

	self roundActive: false.
	self timerMorph stop.
	self infoMorph contents: 'Spiel beendet · Gesamtpunkte: ', gameOrchestrator totalScore asString.
	self refreshControls
