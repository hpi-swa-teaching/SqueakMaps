game flow
showPlayingState

	self ensurePictureLarge.
	self pictureMorph showImage: gameOrchestrator currentLevel imagePath.
	self mapConfigurator clear.
	self focusCampus.
	self currentGuess: nil.
	self roundActive: true.
	self timerMorph reset; start.
	self startButton label: 'Läuft …'.
	self einloggenButton label: 'Lösung einloggen'.
	self infoMorph contents: self playingInfoText
