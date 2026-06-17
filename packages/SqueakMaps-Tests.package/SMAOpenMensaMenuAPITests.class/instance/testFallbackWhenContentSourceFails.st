testing
testFallbackWhenContentSourceFails

	| date menu |

	date := Date newDay: 7 month: 6 year: 2026.
	self menuAPI contentSource mockGetJsonFromWith: [Error signal: 'offline'].

	menu := self menuAPI menuForDate: date.

	self deny: menu hasMeals.
	self
		assert: menu emptyMessage
		equals: 'Speiseplan konnte nicht geladen werden.'.
	self assert: menu date equals: date