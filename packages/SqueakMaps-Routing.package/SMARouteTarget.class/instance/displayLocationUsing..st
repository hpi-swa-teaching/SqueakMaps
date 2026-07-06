routing
displayLocationUsing: aRoutingFacade

	| point coordinate delta |

	point := aRoutingFacade pointForTarget: self place.
	point ifNil: [^ nil].
	coordinate := SMAGeoCoordinate newLong: point lon lat: point lat.
	delta := 0.00005 @ 0.00005.
	^ SMALocation new
		label: self label;
		coordinates: coordinate;
		boundingBox: (coordinate convertToPoint - delta corner: coordinate convertToPoint + delta);
		yourself
