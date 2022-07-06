private
drawRoute: aRoute On: aCanvas

	| polygon pixelPosRoute |
	
	aRoute points isEmpty ifTrue: [^ self].

	pixelPosRoute := aRoute points collect:[:point | self worldPosToPixelPos: (SMAMapConfigurator latLongToWorldPos: point) ].

	polygon := PolygonMorph new.
	polygon 
			vertices: pixelPosRoute
			color: Color blue 
			borderWidth: 4 
			borderColor: Color blue;
			makeOpen;
			visible: true.
			
	aCanvas drawMorph: polygon.