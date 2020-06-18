as yet unclassified
setUp
	self wantsToTest: (SqueakMapsWindow new extent: 200@200; fullBounds; yourself).
	searchButton := self subject findByLabel: 'go!'.
	apiButton := self subject findByLabel: 'select api'