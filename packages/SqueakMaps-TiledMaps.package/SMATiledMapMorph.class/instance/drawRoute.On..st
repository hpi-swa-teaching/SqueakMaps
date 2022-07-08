private
drawRoute: aRouteLine On: aCanvas

	| polygon pixelPosRoute |
	
	aRouteLine points isEmpty ifTrue: [^ self].

	pixelPosRoute := aRouteLine points collect:[:point | self worldPosToPixelPos: (SMAMapConfigurator latLongToWorldPos: point) ].

	polygon := PolygonMorph new.
	polygon 
			vertices: pixelPosRoute
			color: aRouteLine color
			borderWidth: 4 
			borderColor: aRouteLine color;
			makeOpen;
			visible: true.
			
	aCanvas drawMorph: polygon.