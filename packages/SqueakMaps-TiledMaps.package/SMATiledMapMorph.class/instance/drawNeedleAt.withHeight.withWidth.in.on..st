private
drawNeedleAt: aPoint withHeight: aNumber withWidth: anotherNumber in: aColor on: aCanvas

	| topLeftCorner topRightCorner |
	
	topLeftCorner := aPoint + ((anotherNumber / 2) negated  @ aNumber negated).
	topRightCorner := aPoint + (anotherNumber / 2 @ aNumber negated).
	
	aCanvas 
		drawPolygon: { aPoint. topLeftCorner. topRightCorner }
		fillStyle: aColor