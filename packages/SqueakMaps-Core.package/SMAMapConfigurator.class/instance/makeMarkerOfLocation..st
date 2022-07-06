helping
makeMarkerOfLocation: aSMAGeocoderResult

	| markers marker |

	markers := Set new.
	marker := SMAMarker newAt: aSMAGeocoderResult latLong labeled: aSMAGeocoderResult label.
	markers add: marker.
	self tiledMapMorph markers: markers