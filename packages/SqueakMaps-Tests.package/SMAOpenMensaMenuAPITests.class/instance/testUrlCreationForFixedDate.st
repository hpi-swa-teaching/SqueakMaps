testing
testUrlCreationForFixedDate

	| date |

	date := Date newDay: 7 month: 6 year: 2026.

	self
		assert: (self menuAPI mealsUrlForDate: date)
		equals: 'https://openmensa.org/api/v2/canteens/62/days/2026-06-07/meals'