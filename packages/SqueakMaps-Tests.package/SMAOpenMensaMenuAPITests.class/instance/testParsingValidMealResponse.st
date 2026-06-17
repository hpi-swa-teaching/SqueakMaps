testing
testParsingValidMealResponse

	| date menu meal |

	date := Date newDay: 7 month: 6 year: 2026.
	self menuAPI contentSource mockGetJsonFromWith: [self validMealResponse].

	menu := self menuAPI menuForDate: date.
	meal := menu meals first.

	self assert: menu hasMeals.
	self assert: menu meals size equals: 2.
	self assert: meal id equals: 123.
	self assert: meal name equals: 'Kartoffel-Gemüse-Pfanne'.
	self assert: meal category equals: 'Aktionstheke'.
	self assert: meal notesText equals: 'vegan, bio'.
	self assert: meal studentPrice equals: 2.95.
	self assert: meal employeePrice equals: 4.25.
	self assert: meal otherPrice equals: nil