refreshing
testRefreshMapKeepsZoom

	| zoomBefore |
	
	zoomBefore := self model tiledMapMorph zoom.
	self model tiledMapMorph refreshMap.
	self assert: zoomBefore equals: (self model tiledMapMorph zoom)