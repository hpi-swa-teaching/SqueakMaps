private
drawRoute: aRouteLine On: aCanvas

	| line pixelPosRoute |
	
	aRouteLine points isEmpty ifTrue: [^ self].

	pixelPosRoute := aRouteLine points collect: [:point | self worldPosToPixelPos: point].

	line := PolygonMorph new;
		vertices: pixelPosRoute
		color: aRouteLine color
		borderWidth: 4 
		borderColor: aRouteLine color;
		makeOpen;
		visible: true.
		
	aCanvas drawMorph: line