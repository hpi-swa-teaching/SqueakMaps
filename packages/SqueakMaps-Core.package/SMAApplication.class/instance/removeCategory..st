category management
removeCategory: aCategory
	
	(self class savedPins anySatisfy: [:pin | pin category = aCategory])
		ifTrue: [
				self removeCategoryOptions: aCategory.
			].
	self class removePinCategory: aCategory.
	self changed: #items.