game flow
showPlayingState

	self ensurePictureLarge.
	self pictureMorph showImage: gameOrchestrator currentLevel imagePath.
	self mapConfigurator clear.
	self focusCampus.
	self currentGuess: GGNoGuess new.
	self roundActive: true.
	self timerMorph reset; start.
	self infoMorph contents: self playingInfoText.
	self refreshControls
