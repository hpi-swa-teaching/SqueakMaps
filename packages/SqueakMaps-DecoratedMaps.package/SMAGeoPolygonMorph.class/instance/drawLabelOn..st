drawing
drawLabelOn: aCanvas

	| font labelBounds background |
	self showsLabel ifFalse: [^ self].
	(label isNil or: [label isEmpty]) ifTrue: [^ self].
	self vertices isEmpty ifTrue: [^ self].

	font := TextStyle defaultFont.
	labelBounds := self labelBounds.
	labelBounds ifNil: [^ self].
	background := self class labelBackgroundColor.

	aCanvas
		fillRectangle: labelBounds
		fillStyle: background.

	aCanvas
		drawString: label
		at: labelBounds topLeft + 2
		font: font
		color: Color black
