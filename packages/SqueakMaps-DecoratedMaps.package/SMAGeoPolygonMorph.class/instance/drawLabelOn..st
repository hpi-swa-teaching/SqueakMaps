drawing
drawLabelOn: aCanvas

	| font labelPosition labelBounds background |
	(label isNil or: [label isEmpty]) ifTrue: [^ self].
	self vertices isEmpty ifTrue: [^ self].

	font := TextStyle defaultFont.
	labelPosition := self centerOfVertices.
	labelBounds := self labelBounds.
	labelBounds ifNil: [^ self].
	background := self class labelBackgroundColor.

	aCanvas
		fillRectangle: labelBounds
		fillStyle: background.

	aCanvas
		drawString: label
		at: labelPosition
		font: font
		color: Color black
