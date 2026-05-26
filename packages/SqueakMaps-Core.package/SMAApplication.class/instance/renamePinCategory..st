accessing
renamePinCategory: aCategory
	
	| answer aNewCategory |
	
	aCategory isDefault ifTrue: [
		self inform: 'Default category cannot be renamed'.
		^self.
		]. 
			
	answer := UIManager default request: 'New Name'.
	(answer = '') ifFalse: [ 
			aNewCategory := SMAPinCategory new
				title: answer;
				isDefault: false;
				yourself.
			self addCategory: aNewCategory.
			self savedPins do:[:pin |
			pin category = aCategory ifTrue:[
			pin category: aNewCategory.
			]
		].
			SavedCategories remove: aCategory ifAbsent: [].
		].
	