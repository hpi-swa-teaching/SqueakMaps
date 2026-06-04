as yet unclassified
drawLabelOn: aCanvas

	| font labelPosition labelSize background |
	(label isNil or: [label isEmpty]) ifTrue: [^ self].
	self vertices isEmpty ifTrue: [^ self].

	font := TextStyle defaultFont.
	labelPosition := self centerOfVertices.
	labelSize := (font widthOfString: label) @ font height.
	background := Color r: 1.0 g: 1.0 b: 1.0 alpha: 0.8.

	aCanvas
		fillRectangle: ((labelPosition extent: labelSize) expandBy: 2)
		fillStyle: background.

	aCanvas
		drawString: label
		at: labelPosition
		font: font
		color: Color black