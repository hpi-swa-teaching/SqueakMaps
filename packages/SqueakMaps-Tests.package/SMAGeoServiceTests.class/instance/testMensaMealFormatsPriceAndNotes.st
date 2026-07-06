testing
testMensaMealFormatsPriceAndNotes

	| meal |
	meal := SMAMensaMeal new
		notes: #('vegan' 'bio');
		prices: (Dictionary newFrom: {'students' -> 2.5});
		yourself.

	self assert: (meal formattedPrice: 2.5) equals: '2,50 EUR'.
	self assert: meal notesText equals: 'vegan, bio'.
	self assert: meal studentPrice equals: 2.5
