helping
setMarkerFrom: aSMAPin

	| markers marker |

	markers := Set new.
	marker := SMAMarker newAt: aSMAPin latLong labeled: aSMAPin label.
	markers add: marker.
	self tiledMapMorph markers: markers