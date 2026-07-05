geometry
labelBounds

	| font labelPosition labelSize |
	(label isNil or: [label isEmpty]) ifTrue: [^ nil].
	self vertices isEmpty ifTrue: [^ nil].

	font := TextStyle defaultFont.
	labelPosition := self center - (0@ self bounds height // 5).
	labelSize := (font widthOfString: label) @ font height + 2.
	^ Rectangle center: labelPosition extent: labelSize
