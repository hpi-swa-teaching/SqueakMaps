testing
testMensaMealFormatsPriceSummaryAndDisplayLine

	| meal |

	meal := SMAMensaMeal new
		name: 'Bagel mit Hummus';
		category: 'Snack';
		notes: #('vegan');
		prices: (Dictionary new
			at: 'students' put: 3.5;
			at: 'employees' put: 5.25;
			at: 'others' put: 8.5;
			yourself);
		yourself.

	self
		assert: meal priceSummary
		equals: 'Studierende: 3,50 EUR, Mitarbeitende: 5,25 EUR, Gäste: 8,50 EUR'.
	self
		assert: meal displayLine
		equals: 'Bagel mit Hummus - Studierende: 3,50 EUR, Mitarbeitende: 5,25 EUR, Gäste: 8,50 EUR - vegan'.
	self assert: meal categoryLabel equals: 'Snack'
