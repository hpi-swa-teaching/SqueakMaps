as yet unclassified
drawLabelOn: aCanvas

	| font labelPosition labelBounds background |
	(label isNil or: [label isEmpty]) ifTrue: [^ self].
	self vertices isEmpty ifTrue: [^ self].

	font := TextStyle defaultFont.
	labelPosition := self centerOfVertices.
	labelBounds := self labelBounds.
	labelBounds ifNil: [^ self].
	background := Color r: 1.0 g: 1.0 b: 1.0 alpha: 0.8.

	aCanvas
		fillRectangle: labelBounds
		fillStyle: background.

	aCanvas
		drawString: label
		at: labelPosition
		font: font
		color: Color black