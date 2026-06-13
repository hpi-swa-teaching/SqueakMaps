game flow
showStartState

	self roundActive: false.
	self startButton label: 'Spiel starten'.
	self einloggenButton label: 'Lösung einloggen'.
	self infoMorph contents: 'Drücke Start, um zu spielen'
