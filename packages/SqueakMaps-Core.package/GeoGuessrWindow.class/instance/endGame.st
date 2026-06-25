leaderboard
endGame
	"Offer each player a leaderboard entry (player 1 only in multiplayer), then show the board."

	gameOrchestrator isMultiplayer
		ifTrue: [
			self offerLeaderboardEntryFor: gameOrchestrator totalScorep0 prompt: 'Player 0 - Name eingeben (leer = überspringen):'.
			self offerLeaderboardEntryFor: gameOrchestrator totalScorep1 prompt: 'Player 1 - Name eingeben (leer = überspringen):']
		ifFalse: [
			self offerLeaderboardEntryFor: gameOrchestrator totalScorep0 prompt: 'Name eingeben (leer = überspringen):'].
	self showLeaderboard
