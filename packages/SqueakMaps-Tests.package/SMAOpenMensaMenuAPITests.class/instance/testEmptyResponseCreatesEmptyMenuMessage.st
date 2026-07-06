testing
testEmptyResponseCreatesEmptyMenuMessage

	| date menu |
	date := Date year: 2026 month: 7 day: 6.
	menu := menuAPI menuFromJson: #() date: date.

	self deny: menu hasMeals.
	self assert: (menu emptyMessage includesSubstring: 'keine Speiseplandaten')
