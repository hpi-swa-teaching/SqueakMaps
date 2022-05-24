as yet unclassified
setUp

	super setUp.
	self orsAPI: SMAORSRoutingAPI new.
	self orsAPI contentSource: SMAMockJsonUrlReader new.
	