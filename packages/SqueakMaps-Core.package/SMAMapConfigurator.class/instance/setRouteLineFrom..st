helping
setRouteLineFrom: aSMARoute

	| routeLine points |

	points := aSMARoute waypoints collect: [:point | self class geoCoordinatesToWorldPos: point].
	routeLine := SMARouteLine new
		points: points;
		boundingBox: aSMARoute boundingBox.
	self tiledMapMorph route: routeLine