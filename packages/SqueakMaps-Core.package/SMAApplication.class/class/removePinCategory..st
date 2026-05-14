accessing
removePinCategory: aCategory
	
	aCategory isDefault ifTrue: [
		self inform: 'Default category cannot be removed'.
		].
	
	SavedCategories remove: aCategory ifAbsent: []