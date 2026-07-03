category management
uncategorizePins: aRemovedCategory

	| defaultCategory|
	defaultCategory := self class savedCategories detect: [:each | each isDefault].
	self class savedPins do:[:pin |
		pin category = aRemovedCategory ifTrue: [ pin category: defaultCategory.]
	].
	self class removePinCategory: aRemovedCategory.
	self changed: #items.