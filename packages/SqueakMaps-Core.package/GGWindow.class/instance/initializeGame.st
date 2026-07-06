initialization
initializeGame

	self gameOrchestrator: GGGameOrchestrator new.
	self timerMorph onTimeout: [self handleTimeout]
