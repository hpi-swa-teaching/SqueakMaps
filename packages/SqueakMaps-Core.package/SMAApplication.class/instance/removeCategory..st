category management
removeCategory: aCategory

	aCategory isDefault ifTrue: [
		^self inform: 'Default category cannot be removed'
		].
	(self class savedPins anySatisfy: [:pin | pin category = aCategory])
		ifTrue: [
				self removeCategoryOptions: aCategory.
			].
	self class removePinCategory: aCategory.
	self changed: #items.