as yet unclassified
testSearchbarsBothEmpty

	self searchBar setText: ''.
	self secondSearchBar setText: ''.

	[self searchButton click.] valueSupplyingAnswer: {'Please enter Search Location.'. #closeDialog}.