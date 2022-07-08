helping
setRouteLineFrom: aSMARoute

	| routeLine |

	routeLine := SMARouteLine new.
	routeLine
		points: aSMARoute points;
		boundingBox: aSMARoute boundingBox.
	self tiledMapMorph route: routeLine