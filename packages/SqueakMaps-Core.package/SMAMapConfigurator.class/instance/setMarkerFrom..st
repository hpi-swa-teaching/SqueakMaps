helping
setMarkerFrom: aSMALocation

	| markers marker |

	markers := Set new.
	marker := SMAMarker newAt: aSMALocation latLong labeled: aSMALocation label.
	markers add: marker.
	self tiledMapMorph markers: markers