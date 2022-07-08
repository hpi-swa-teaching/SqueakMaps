api setting
testRefreshMapKeepsZoom

	| zoomBefore |
	
	zoomBefore := squeakMapsWindow tiledMapMorph zoom.
	squeakMapsWindow tiledMapMorph refreshMap.
	self assert: zoomBefore equals: (squeakMapsWindow tiledMapMorph zoom)