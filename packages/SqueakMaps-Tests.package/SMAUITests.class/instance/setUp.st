as yet unclassified
setUp
	"self wantsToTest: (SMAWindow new extent: 200@200; fullBounds; yourself)."
	model := SMAWindow new." extent: 200@200; fullBounds; yourself)."
	self wantsToTest: model build.
	
	self tiledMap: (model tiledMapMorph).
	"self searchBar: (self subject findByLabel: 'StartLabel').
	self secondSearchBar: (self subject findByLabel: 'DestinationLabel')."
	self searchButton: (self subject findByLabel: 'Go').
	self apiButton: (self subject findByLabel: 'Select API').
	self apiKeyManagementButton: (self subject findByLabel: 'API Keys').