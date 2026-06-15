accessing
levelSelectorValueBounds

	| bounds |
	bounds := self levelSelectorBounds.

	^ Rectangle
		origin: bounds left @ (bounds top + 26)
		extent: bounds width @ 28