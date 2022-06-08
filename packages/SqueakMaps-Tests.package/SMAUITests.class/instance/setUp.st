as yet unclassified
setUp

	model := SMAWindow new.
	
	self wantsToTest: model build.
	self carButton: (self subject findByLabel: 'Car').
	self bikeButton: (self subject findByLabel: 'Bike').
	self walkButton: (self subject findByLabel: 'Walk').
	