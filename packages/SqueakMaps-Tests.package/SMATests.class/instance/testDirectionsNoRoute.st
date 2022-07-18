searching
testDirectionsNoRoute

	| placeName1 placeName2 errorText |

	placeName1 := 'Berlin'.
	placeName2 := 'Sydney'.
	errorText :=  'The chosen locations are too far apart from each other.'.

	self squeakMapsWindow startSearchInput: placeName1.
	self squeakMapsWindow destinationSearchInput: placeName2.

	[self squeakMapsWindow searchDirections] valueSupplyingAnswer: {errorText. #closeDialog}