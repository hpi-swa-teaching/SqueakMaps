opening
testOpenInWorld

	| world |
	world := (PasteUpMorph newWorldForProject: nil).
	self squeakMapsWindow openInWorld: world.
	world submorphOfClass: SMAWindow.
	self assert: (self squeakMapsWindow) equals: (world submorphOfClass: SMAWindow)