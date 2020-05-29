testing
testOpenInWorld

| world |

	world := (PasteUpMorph newWorldForProject: nil).
	self squeakMapsWindow openInWorld: world.
	world delete.