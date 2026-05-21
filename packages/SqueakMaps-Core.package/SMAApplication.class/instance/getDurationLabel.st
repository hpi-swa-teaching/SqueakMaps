building
getDurationLabel

	| sum hours minutes |
	
	sum := 0.
	self routes do: [:r | sum := sum + r getDurationMinutes].

	hours := (sum / 60) floor.
	minutes := sum - (hours * 60) rounded.	

	^ { StringMorph new contents: hours asString , 'h ',  minutes asString, 'min'; yourself }