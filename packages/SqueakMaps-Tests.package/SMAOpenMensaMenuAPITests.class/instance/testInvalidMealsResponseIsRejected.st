testing
testInvalidMealsResponseIsRejected

	self should: [menuAPI mealsFromJson: Dictionary new] raise: Error
