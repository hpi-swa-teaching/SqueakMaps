running
tearDown
	
	SMAApplication savedCategories: self savedCategoriesBefore.
	SMAApplication savedPins: self savedPinsBefore.
	super tearDown.