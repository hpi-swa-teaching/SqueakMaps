initialization
setWindow: aGGWindow with: aGGGameOrchestrator

	self window: aGGWindow.
	self gameOrchestrator: aGGGameOrchestrator.
	self startButton: (self window buttonLabeled: 'Start game' action: [self window handleStartButton]).
	self backButton: ((self window buttonLabeled: 'Back' action: [self window returnToStartScreen]) visible: false; yourself).
	self einloggenButton: (self window buttonLabeled: 'Log in guess' action: [self window handleEinloggenButton]).
	self quitButton: (self window buttonLabeled: 'Quit game' action: [self window handleQuitButton])
