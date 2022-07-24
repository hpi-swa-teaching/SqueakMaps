helping
setRouteLineFrom: aSMARoute

	| routeLine points |

	routeLine := SMARouteLine new.
	points := aSMARoute waypoints collect: [:point | self class geoCoordinatesToWorldPos: point].
	routeLine
		points: points;
		boundingBox: aSMARoute boundingBox.
	self tiledMapMorph route: routeLine