accessing
drawLevelSelectorOn: aCanvas

	self shouldDrawRoomOverlays ifFalse: [^ self].

	aCanvas
		fillRectangle: self levelSelectorBounds
		fillStyle: self class levelSelectorFillColor.

	aCanvas
		frameRectangle: self levelSelectorBounds
		color: Color gray.

	self drawCenteredString: '+' in: self levelSelectorUpBounds on: aCanvas.
	self drawCenteredString: self visibleLevel asString in: self levelSelectorValueBounds on: aCanvas.
	self drawCenteredString: '-' in: self levelSelectorDownBounds on: aCanvas