testing
testMensaDetailTextIncludesAvailablePriceLabels

	| application meal text |

	application := SMAApplication new.
	meal := SMAMensaMeal new
		name: 'Bagel mit Hummus';
		prices: (Dictionary new
			at: 'students' put: 3.5;
			at: 'employees' put: 5.25;
			at: 'others' put: 8.5;
			yourself);
		yourself.

	text := application campusDetailTextForMensaMeal: meal.

	self
		assert: text
		equals: 'Bagel mit Hummus - Studierende: 3,50 EUR, Mitarbeitende: 5,25 EUR, Gäste: 8,50 EUR'