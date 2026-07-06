testing
testCustomCanteenIdIsUsed

	menuAPI canteenId: 99.
	self assert: menuAPI canteenId equals: 99.
	self assert: (menuAPI mealsUrlForDate: (Date year: 2026 month: 7 day: 6))
		equals: 'https://openmensa.org/api/v2/canteens/99/days/2026-07-06/meals'
