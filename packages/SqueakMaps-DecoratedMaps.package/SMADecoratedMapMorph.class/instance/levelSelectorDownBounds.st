accessing
levelSelectorDownBounds

	| bounds |
	bounds := self levelSelectorBounds.

	^ Rectangle
		origin: bounds left @ (bounds top + 54)
		extent: bounds width @ 26