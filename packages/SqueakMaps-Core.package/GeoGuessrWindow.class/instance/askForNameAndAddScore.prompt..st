leaderboard
askForNameAndAddScore: aScore prompt: aPromptText
	"Ask for a name and record the score. An empty input or cancel skips the entry.
	A too-long name is re-prompted; cancelling at any point still skips."

	| name entry |
	name := UIManager default request: aPromptText.
	[name notNil and: [name notEmpty and: [name size > 10]]] whileTrue: [
		name := UIManager default request: 'Name (max. 10 Zeichen, leer = überspringen):'].
	(name isNil or: [name isEmpty]) ifTrue: [^ self].

	entry := LeaderboardEntry new.
	entry playerName: name.
	entry score: aScore.
	leaderboard addEntry: entry
