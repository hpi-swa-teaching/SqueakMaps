displaying
addTitle

	| title |
	title := StringMorph contents: 'Leaderboard'.
	title position: self width * 5.5 @ (self height * 0.2).
	self addMorph: title
