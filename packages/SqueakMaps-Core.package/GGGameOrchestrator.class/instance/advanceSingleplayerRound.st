game flow
advanceSingleplayerRound

	self levelManager hasMoreLevels ifFalse: [
		self state: #ended.
		^ self].

	self currentLevel: self levelManager nextLevel.
	self state: #playing