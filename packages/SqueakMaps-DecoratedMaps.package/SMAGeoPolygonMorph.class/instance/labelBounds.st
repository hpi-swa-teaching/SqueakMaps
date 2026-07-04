geometry
labelBounds

	| font labelPosition labelSize |
	(label isNil or: [label isEmpty]) ifTrue: [^ nil].
	self vertices isEmpty ifTrue: [^ nil].

	font := TextStyle defaultFont.
	labelPosition := self centerOfVertices.
	labelSize := (font widthOfString: label) @ font height.
	^ (labelPosition extent: labelSize) expandBy: 2
