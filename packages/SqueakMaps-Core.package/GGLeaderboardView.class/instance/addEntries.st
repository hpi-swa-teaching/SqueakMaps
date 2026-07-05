displaying
addEntries

	| y spacing |
	y := self height * 1.5.
	spacing := self height * 1.3.
	self leaderboard entries doWithIndex: [:entry :index | | text |
		text := StringMorph contents: index asString, '. ', entry playerName, ' - ', entry score asString.
		text position: self width * 0.4 @ y.
		self addMorph: text.
		y := y + spacing]
