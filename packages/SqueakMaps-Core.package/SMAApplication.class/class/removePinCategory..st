accessing
removePinCategory: aCategory
	
	aCategory isDefault ifTrue: [
		self inform: 'Default category cannot be removed'.
		]; 
	ifFalse: [
		SavedCategories remove: aCategory ifAbsent: []
		].
	