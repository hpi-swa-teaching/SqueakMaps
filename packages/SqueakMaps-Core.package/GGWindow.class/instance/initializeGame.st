initialization
initializeGame

	gameOrchestrator := GGGameOrchestrator new.
	self timerMorph onTimeout: [self handleTimeout]
