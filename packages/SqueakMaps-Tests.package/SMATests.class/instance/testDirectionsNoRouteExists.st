searching
testDirectionsNoRouteExists

	| placeName1 placeName2 errorText tiledMapMorph |

	placeName1 := 'Berlin'.
	placeName2 := 'Madeira'.
	errorText :=  'There exists no route between the chosen locations.'.
	
	tiledMapMorph := self squeakMapsWindow tiledMapMorph.

	self squeakMapsWindow startSearchInput: placeName1.
	self squeakMapsWindow destinationSearchInput: placeName2.

	[self squeakMapsWindow searchDirections] valueSupplyingAnswer: {errorText. #closeDialog}.
	self assert: tiledMapMorph markers size = 2.
	self assert: (tiledMapMorph markers anySatisfy: [:marker | marker label includesSubstring: 'Berlin']).
	self assert: (tiledMapMorph markers anySatisfy: [:marker | marker label includesSubstring: 'Madeira']).