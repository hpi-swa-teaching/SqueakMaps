geometry
updateVerticesForMap: aMapMorph

	| pixelVertices |
	pixelVertices := self geoPoints collect: [:point |
		aMapMorph worldPosToPixelPos:
			(SMAMapTileLoader latLongToWorldPos: point lon @ point lat)].

	self
		vertices: pixelVertices
		color: fillColor
		borderWidth: outlineWidth
		borderColor: outlineColor
