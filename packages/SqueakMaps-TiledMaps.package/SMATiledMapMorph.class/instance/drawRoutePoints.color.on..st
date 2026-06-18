private
drawRoutePoints: aCollectionOfWorldPoints color: aColor on: aCanvas

	| polygon pixelPosRoute |
	pixelPosRoute := aCollectionOfWorldPoints collect: [:point | self worldPosToPixelPos: point].

	polygon := PolygonMorph new.
	polygon
		vertices: pixelPosRoute
		color: aColor
		borderWidth: 4
		borderColor: aColor;
		makeOpen;
		visible: true.
	aCanvas drawMorph: polygon