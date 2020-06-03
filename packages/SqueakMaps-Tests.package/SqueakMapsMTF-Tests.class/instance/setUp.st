as yet unclassified
setUp
	self wantsToTest: SqueakMapsWindow new.
	searchButton := self subject findByLabel: 'go!'.
	apiButton := self subject findByLabel: 'select api'.
	apiButton openInWorld.
	searchButton openInWorld.