helping
getZoomFrom: aFirstSMAMapLocationMarker and: aSecondSMAMapLocationMarker
	| boundingBox zoom |

	boundingBox := self getBoundingBoxFitting: aFirstSMAMapLocationMarker and: aSecondSMAMapLocationMarker.
	zoom := self geocoder boundingBoxZoom: boundingBox.
	^ self tileSource clampZoom: zoom