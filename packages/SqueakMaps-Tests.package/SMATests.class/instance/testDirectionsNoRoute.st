searching
testDirectionsNoRoute

	| placeName1 placeName2 errorText |

	placeName1 := 'Berlin'.
	placeName2 := 'Sydney'.
	errorText :=  'Request parameters exceed the server configuration limits. The approximated route distance must not be greater than 6000000.0 meters.'.

	self squeakMapsWindow startSearchInput: placeName1.
	self squeakMapsWindow destinationSearchInput: placeName2.

	[self squeakMapsWindow searchDirections] valueSupplyingAnswer: {errorText. #closeDialog}