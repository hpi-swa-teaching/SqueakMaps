as yet unclassified
switchToDirectionsView

	self model switchToDirectionsView.
	self carButton: (self subject findByLabel: 'Car').
	self bikeButton: (self subject findByLabel: 'Bike').
	self walkButton: (self subject findByLabel: 'Walk').