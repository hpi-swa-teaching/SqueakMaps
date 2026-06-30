leaderboard
promptPlayerName
	"Ask for a leaderboard name. Naming is optional, so a cancelled or empty prompt returns nil
	instead of asking again. An overlong name is shortened to ten characters."

	| name |

	name := UIManager default request: 'Name eingeben (optional):'.
	(name isNil or: [name isEmpty]) ifTrue: [^ nil].
	^ name size > 10
		ifTrue: [name first: 10]
		ifFalse: [name]
