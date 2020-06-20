api setting
testRefreshMapKeepsZoom
	| zoomBefore |
	zoomBefore := squeakMapsWindow tiledMapMorph zoom.
	squeakMapsWindow refreshMap.
	self assert: zoomBefore equals: (squeakMapsWindow tiledMapMorph zoom)