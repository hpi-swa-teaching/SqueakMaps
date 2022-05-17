running
setUp
	super setUp.
	self world: (PasteUpMorph newWorldForProject: nil).
	self squeakMapsWindow: SMAWindow new.
	self world addMorph: self squeakMapsWindow