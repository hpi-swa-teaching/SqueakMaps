as yet unclassified
testSearchbarEmpty

	self searchBar setText: ''.
	self secondSearchBar setText: 'Berlin'.

	[self searchButton click.] valueSupplyingAnswer: {'Please enter Search Location.'. #closeDialog}.