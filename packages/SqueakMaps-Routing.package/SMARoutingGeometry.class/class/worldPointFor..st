geometry
worldPointFor: aPoint

	^ SMAMapTileLoader latLongToWorldPos: (aPoint lon @ aPoint lat)
