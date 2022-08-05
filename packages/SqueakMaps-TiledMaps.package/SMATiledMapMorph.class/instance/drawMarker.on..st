private
drawMarker: aMarker on: aCanvas

	| pixelPosition labelPosition needleHeight needleWidth |
	
	needleHeight := 20.
	needleWidth := 10.
	
	(self worldBounds containsPoint: aMarker worldPos) ifFalse: [^ self].

	pixelPosition := self worldPosToPixelPos: aMarker worldPos.
	labelPosition := pixelPosition + (0 @ needleHeight negated).
	self drawLabel: aMarker label at: labelPosition on: aCanvas.
	self drawNeedleAt: pixelPosition withHeight: needleHeight withWidth: needleWidth in: aMarker color on: aCanvas
	