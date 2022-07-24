pin testing
testNoPinsSaved

	model class savedPins: OrderedCollection new.
	[model showPin] valueSupplyingAnswer: {'No pins saved.' . #closeDialog}.
	self assert: model class savedPins isEmpty