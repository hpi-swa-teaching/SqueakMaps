category management
renamePinCategory: aCategory
	
	| answer aNewCategory |
	aCategory isDefault ifTrue: [^ self inform: 'Default category cannot be renamed'.]. 
	answer := UIManager default request: 'New Name'.
	(answer = '') ifFalse: [ 
			aNewCategory := self createNewCategory: answer.
			(self addCategory: aNewCategory) ifTrue: [.
				self categorizePinsFor: aCategory to: aNewCategory.
			SavedCategories remove: aCategory ifAbsent: []
		].
	]