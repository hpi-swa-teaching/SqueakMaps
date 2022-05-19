as yet unclassified
testSearchbarEmpty

	(self subject findByName: 'Search Bar') setText: ''.
	(self subject findByName: 'Second Search Bar') setText: 'Berlin'.

	[(self subject findByLabel: 'go!') click.] valueSupplyingAnswer: {'Please enter Search Location.'. #closeDialog}.