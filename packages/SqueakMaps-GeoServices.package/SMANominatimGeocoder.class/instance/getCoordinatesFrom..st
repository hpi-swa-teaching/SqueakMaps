searching
getCoordinatesFrom: aJson

	^ SMAGeoCoordinate 
		newLong: (aJson at: 'lon') asNumber 
		lat: (aJson at: 'lat') asNumber