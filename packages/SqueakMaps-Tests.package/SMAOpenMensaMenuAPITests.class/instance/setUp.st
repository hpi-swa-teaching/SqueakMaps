running
setUp

	super setUp.
	self menuAPI: (SMAOpenMensaMenuAPI new
		contentSource: SMAMockJsonUrlReader new;
		yourself)