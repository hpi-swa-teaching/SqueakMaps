calculating
distanceInMetersTo: aSMAGeoCoordinate
	"Great-circle distance in meters between the two coordinates (Haversine formula)."

	| earthRadius deltaLat deltaLong a |

	earthRadius := 6371000.
	deltaLat := (aSMAGeoCoordinate lat - self lat) degreesToRadians.
	deltaLong := (aSMAGeoCoordinate long - self long) degreesToRadians.
	a := (deltaLat / 2) sin squared
		+ (self lat degreesToRadians cos
			* aSMAGeoCoordinate lat degreesToRadians cos
			* (deltaLong / 2) sin squared).
	^ earthRadius * 2 * a sqrt arcSin
