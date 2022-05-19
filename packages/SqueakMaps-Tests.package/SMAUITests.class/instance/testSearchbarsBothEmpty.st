as yet unclassified
testSearchbarsBothEmpty

	(self subject findByName: 'Search Bar') setText: ''.
	(self subject findByName: 'Second Search Bar') setText: ''.

	[(self subject findByLabel: 'go!') click.] valueSupplyingAnswer: {'Please enter Search Location.'. #closeDialog}.