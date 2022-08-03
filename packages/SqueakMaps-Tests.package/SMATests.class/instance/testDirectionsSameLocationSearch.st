searching
testDirectionsSameLocationSearch

	| placeName1 placeName2 errorText tiledMapMorph |

	placeName1 := 'Berlin'.
	placeName2 := 'Berlin'.
	errorText :=  'Start and Destination Location are the same.'.
	
	tiledMapMorph := self model tiledMapMorph.

	self model startSearchInput: placeName1.
	self model destinationSearchInput: placeName2.

	[self model searchDirections] valueSupplyingAnswer: {errorText. #closeDialog}.
	self assert: tiledMapMorph markers size = 1.
	self assert: (tiledMapMorph markers anySatisfy: [:marker | marker label includesSubstring: 'Berlin'])