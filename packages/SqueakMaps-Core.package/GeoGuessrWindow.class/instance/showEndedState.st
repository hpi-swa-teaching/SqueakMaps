game flow
showEndedState

	self roundActive: false.
	self timerMorph stop.
	self startButton label: 'Neues Spiel'.
	self einloggenButton label: 'Lösung einloggen'.
	self infoMorph contents: 'Spiel beendet · Gesamtpunkte: ', gameOrchestrator totalScore asString
