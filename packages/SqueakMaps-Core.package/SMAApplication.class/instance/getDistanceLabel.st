building
getDistanceLabel

	| sum |
	
	sum := 0.
	self routes do: [:r | sum := sum + r getDistance].

	^ { StringMorph new contents: (sum rounded) asString, 'km'; yourself }