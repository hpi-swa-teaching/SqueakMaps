as yet unclassified
testGetNameTo

	| latLongMunich zoom |
	
	latLongMunich := 11.576124@48.137154.
	zoom := 10.

 	self assert: 'München' equals: (tiledMapMorph getNameTo: latLongMunich With: zoom)
	