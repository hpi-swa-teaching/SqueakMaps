as yet unclassified
setUp
	self wantsToTest: (SMAWindow new extent: 200@200; fullBounds; yourself).
	
	self tiledMap: (self subject tiledMapMorph).
	self searchBar: (self subject findByName: 'Search Bar').
	self secondSearchBar: (self subject findByName: 'Second Search Bar').
	self searchButton: (self subject findByLabel: 'go!').
	self apiButton: (self subject findByLabel: 'select api').
	self apiKeyManagementButton: (self subject findByLabel: 'manage api keys').