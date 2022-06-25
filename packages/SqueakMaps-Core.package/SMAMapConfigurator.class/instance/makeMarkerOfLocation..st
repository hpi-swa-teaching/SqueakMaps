as yet unclassified
makeMarkerOfLocation: aSMAGeocoderResult

	| markers marker |

	markers := Set new.
	marker := self makeMarkerAt: aSMAGeocoderResult latLong labeled: aSMAGeocoderResult label.
	markers add: marker.
	self tiledMapMorph markers: markers