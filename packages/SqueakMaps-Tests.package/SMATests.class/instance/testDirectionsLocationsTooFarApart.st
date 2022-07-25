searching
testDirectionsLocationsTooFarApart

	| placeName1 placeName2 errorText tiledMapMorph |

	placeName1 := 'Berlin'.
	placeName2 := 'Sydney'.
	errorText :=  'The chosen locations are too far apart from each other.'.
	
	tiledMapMorph := self model tiledMapMorph.

	self model startSearchInput: placeName1.
	self model destinationSearchInput: placeName2.

	[self model searchDirections] valueSupplyingAnswer: {errorText. #closeDialog}.
	self assert: tiledMapMorph markers size = 2.
	self assert: (tiledMapMorph markers anySatisfy: [:marker | marker label includesSubstring: 'Berlin']).
	self assert: (tiledMapMorph markers anySatisfy: [:marker | marker label includesSubstring: 'Sydney'])