accessing
addCategory: aCategory

	((SavedCategories collect: [:c | c title]) includes: aCategory title) ifFalse: [
			SavedCategories addIfNotPresent: aCategory.
			^ true.
		];
	ifTrue: [
		self inform: 'No duplicates allowed.'.
		^ false.
		]