category management
removeAllPins: aRemovedCategory

	(UIManager default confirm: 'Are you sure?')
		ifTrue: [
			"delete all pins"
			self class savedPins do:[:pin |
				pin category = aRemovedCategory ifTrue:[
					self removePin: pin]
				]
			].
		self class removePinCategory: aRemovedCategory.
		self changed: #items
				