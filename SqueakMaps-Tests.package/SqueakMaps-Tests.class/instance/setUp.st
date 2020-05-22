initilization
setUp
	super setUp.
	self world: (PasteUpMorph newWorldForProject: nil).
	self squeakMapsWindow: (SqueakMapsWindow new openInWorld: world)