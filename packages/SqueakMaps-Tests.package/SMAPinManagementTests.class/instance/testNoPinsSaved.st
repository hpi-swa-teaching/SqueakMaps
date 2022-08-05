pin testing
testNoPinsSaved

	self model class savedPins: OrderedCollection new.
	[self model showPin] valueSupplyingAnswer: { 'No pins saved.' . #closeDialog }.
	self assert: self model class savedPins isEmpty