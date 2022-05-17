testing
testGetNameTo

	| longLatMunich zoom |
	
	longLatMunich := 11.576124@48.137154.
	zoom := 10.

 	self assert: 'München' equals: (tiledMapMorph getNameTo: longLatMunich With: zoom)
	