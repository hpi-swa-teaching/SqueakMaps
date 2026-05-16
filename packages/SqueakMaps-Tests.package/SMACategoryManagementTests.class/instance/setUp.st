running
setUp

	self model: SMAApplication new.
	self wantsToTest: self model build.
	
	self savedCategoriesBefore: SMAApplication savedCategories.
	SMAApplication savedCategories: (OrderedCollection with: SMAPinCategory defaultCategory).
	
	self savedPinsBefore: SMAApplication savedPins.	
	SMAApplication savedPins: OrderedCollection new.
	
	self
		addCategoryButton: (self subject findByLabel: 'Add Category');
		removeCategoryButton: (self subject findByLabel: 'Remove Category').