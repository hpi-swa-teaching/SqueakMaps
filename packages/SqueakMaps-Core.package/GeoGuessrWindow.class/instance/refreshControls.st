game flow
refreshControls
	"Show/label the buttons that make sense for the current phase."

	gameOrchestrator isPlaying ifTrue: [^ self showPlayingControls].
	gameOrchestrator isEvaluating ifTrue: [^ self showEvaluatingControls].
	gameOrchestrator isEnded ifTrue: [^ self showEndedControls].
	self showStartControls
