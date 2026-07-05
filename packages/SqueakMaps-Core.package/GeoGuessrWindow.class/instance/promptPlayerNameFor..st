leaderboard
promptPlayerNameFor: aLabel
	"Ask for a leaderboard name, prefixing the player's label when given (nil in single-player).
	Naming is optional, so a cancelled or empty prompt returns nil instead of asking again.
	An overlong name is shortened to ten characters."

	| prompt name |
	prompt := aLabel
		ifNil: ['Name eingeben (optional):']
		ifNotNil: [:label | label, ' - Name eingeben (optional):'].
	name := UIManager default request: prompt.
	(name isNil or: [name isEmpty]) ifTrue: [^ nil].
	^ name size > self maxNameLength
		ifTrue: [name first: self maxNameLength]
		ifFalse: [name]
