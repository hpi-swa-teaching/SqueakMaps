game flow
advanceMultiplayerRound

	self currentPlayerIndex = 0 ifTrue: [
		self currentPlayerIndex: 1.
		self state: #playing.
		^ self].

	self levelManager hasMoreLevels ifFalse: [
		self state: #ended.
		^ self].

	self advanceToNextLevel