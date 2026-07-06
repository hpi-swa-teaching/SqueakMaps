testing
testMissingMealFieldsUseDefaults

	| meal |
	meal := menuAPI mealFromJson: Dictionary new.
	self assert: meal id isNil.
	self assert: meal name equals: ''.
	self assert: meal category equals: ''.
	self assert: meal notes isEmpty
