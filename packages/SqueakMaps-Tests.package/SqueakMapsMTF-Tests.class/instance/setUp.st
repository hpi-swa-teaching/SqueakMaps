as yet unclassified
setUp
	self wantsToTest: (SqueakMapsWindow new openInWorld: (PasteUpMorph new)).
	searchButton := self subject findByLabel: 'go!'.
	apiButton := self subject findByLabel: 'select api'