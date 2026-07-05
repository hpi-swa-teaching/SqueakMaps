game flow
advanceToNextLevel

	self currentLevel: self levelManager nextLevel.
	self currentPlayerIndex: 0.
	self state: #playing
