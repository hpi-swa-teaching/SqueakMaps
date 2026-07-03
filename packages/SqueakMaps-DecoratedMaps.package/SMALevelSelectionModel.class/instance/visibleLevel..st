as yet unclassified
visibleLevel: aNumber

	aNumber = self visibleLevel ifTrue: [^ self].
	visibleLevel := aNumber.
	self changed: #visibleLevel