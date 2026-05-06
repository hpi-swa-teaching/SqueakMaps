accessing
visiblePinCategories

	^ visiblePinCategories
		ifNil: [ visiblePinCategories := OrderedCollection new ]