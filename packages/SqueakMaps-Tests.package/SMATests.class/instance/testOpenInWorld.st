opening
testOpenInWorld

	| world |
	
	world := (PasteUpMorph newWorldForProject: nil).
	self model build openInWorld: world.
	self assert: true equals: (world submorphs contains: [:morph | morph label = 'SqueakMaps'])