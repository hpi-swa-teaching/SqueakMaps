private
drawRoutePoints: aCollectionOfWorldPoints color: aColor on: aCanvas

	| polygon pixelPosRoute |
	pixelPosRoute := aCollectionOfWorldPoints collect: [:point | self worldPosToPixelPos: point].
	
	polygon := PolygonMorph new
		vertices: pixelPosRoute color: aColor borderWidth: 4 borderColor: aColor;
		makeOpen;
		visible: true;
		yourself.
	aCanvas drawMorph: polygon