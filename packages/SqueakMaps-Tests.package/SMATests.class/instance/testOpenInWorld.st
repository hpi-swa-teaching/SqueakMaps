opening
testOpenInWorld

	| world |
	world := (PasteUpMorph newWorldForProject: nil).
	self squeakMapsWindow build openInWorld: world.
	self assert: true equals: (world submorphs contains: [:morph | morph label = 'SqueakMaps']).