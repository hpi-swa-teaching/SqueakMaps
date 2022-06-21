helping
getZoomFrom: aSMAGeocoderResult1 and: aSMAGeocoderResult2
	| boundingBox zoom |

	boundingBox := self getBoundingBoxOf: aSMAGeocoderResult1 and: aSMAGeocoderResult2.
	zoom := self geocoder boundingBoxZoom: boundingBox.
	^ self tileSource clampZoom: zoom