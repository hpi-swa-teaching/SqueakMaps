accessing
levelSelectorUpBounds

	| bounds |
	bounds := self levelSelectorBounds.

	^ Rectangle
		origin: bounds origin
		extent: bounds width @ 26