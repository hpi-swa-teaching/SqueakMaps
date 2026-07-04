pin management
removeAllPins: aRemovedCategory

	(UIManager default confirm: 'Are you sure?')
		ifTrue: [ self deleteAllPinsIn: aRemovedCategory].
		self class removePinCategory: aRemovedCategory.
		self changed: #items
				 