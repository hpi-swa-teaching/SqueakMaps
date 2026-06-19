accessing
addCategory: aCategory

	((SavedCategories collect: [:c | c title]) includes: aCategory title) ifFalse: [
			SavedCategories addIfNotPresent: aCategory.
			
		];
	ifTrue: [
		self inform: 'No duplicates allowed.'
		]