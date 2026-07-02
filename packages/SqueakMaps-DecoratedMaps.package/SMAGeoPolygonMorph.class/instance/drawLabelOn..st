as yet unclassified
drawLabelOn: aCanvas

	| font labelBounds background |
	self showsLabel ifFalse: [^ self].
	(label isNil or: [label isEmpty]) ifTrue: [^ self].
	self vertices isEmpty ifTrue: [^ self].

	font := TextStyle defaultFont.
	labelBounds := self labelBounds.
	labelBounds ifNil: [^ self].
	background := Color r: 1.0 g: 1.0 b: 1.0 alpha: 0.8.

	aCanvas
		fillRectangle: labelBounds
		fillStyle: background.

	aCanvas
		drawString: label
		at: labelBounds topLeft
		font: font
		color: Color black