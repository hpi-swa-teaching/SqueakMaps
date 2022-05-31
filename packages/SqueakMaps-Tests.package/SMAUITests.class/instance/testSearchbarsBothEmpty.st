as yet unclassified
testSearchbarsBothEmpty

	model startSearchInput: ''.
	model destinationSearchInput: ''.

	[self searchButton click.] valueSupplyingAnswer: {'Please enter Search Location.'. #closeDialog}.