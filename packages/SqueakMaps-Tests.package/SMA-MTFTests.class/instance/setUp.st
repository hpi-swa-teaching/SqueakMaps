as yet unclassified
setUp
	self wantsToTest: (SMAWindow new extent: 200@200; fullBounds; yourself).
	searchButton := self subject findByLabel: 'go!'.
	apiButton := self subject findByLabel: 'select api'.
	saveButton := self subject findByLabel: 'save a pin'.
	apiKeyManagementButton := self subject findByLabel: 'manage api keys'