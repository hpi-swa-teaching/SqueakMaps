as yet unclassified
labelBounds

	| font labelPosition labelSize |
	(label isNil or: [label isEmpty]) ifTrue: [^ nil].
	self vertices isEmpty ifTrue: [^ nil].

	font := TextStyle defaultFont.
	labelPosition := self centerOfBoundingBox.
	labelSize := (font widthOfString: label) @ font height.
	^ (Rectangle center: labelPosition extent: labelSize) expandBy: 2