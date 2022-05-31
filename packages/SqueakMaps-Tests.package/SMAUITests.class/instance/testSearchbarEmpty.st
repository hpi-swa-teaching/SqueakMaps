as yet unclassified
testSearchbarEmpty

	model startSearchInput: ''.
	model destinationSearchInput: 'Berlin'.

	[self searchButton click.] valueSupplyingAnswer: {'Please enter Search Location.'. #closeDialog}.