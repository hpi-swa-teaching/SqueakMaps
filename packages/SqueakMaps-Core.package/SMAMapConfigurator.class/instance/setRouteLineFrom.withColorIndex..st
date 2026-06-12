helping
setRouteLineFrom: aSMARoute withColorIndex: anIndex

	| routeLine points |

	points := aSMARoute waypoints collect: [:point | self class geoCoordinatesToWorldPos: point].
	routeLine := SMARouteLine new
		points: points;
		boundingBox: aSMARoute boundingBox;
		color: (Color fromString: (SMARouteLine routeColorCollection at: anIndex));
		yourself.
	self tiledMapMorph addRoute: routeLine