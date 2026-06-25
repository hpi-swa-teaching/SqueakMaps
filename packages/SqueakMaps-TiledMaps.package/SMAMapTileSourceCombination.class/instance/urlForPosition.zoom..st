url
urlForPosition: aScaledPosition zoom: aZoom

	^ (self selectTileSource: aScaledPosition zoom: aZoom)
		urlForPosition: aScaledPosition
		zoom: aZoom