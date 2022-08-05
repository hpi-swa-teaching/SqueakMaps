refreshing
testLayoutChangedKeepsZoom

	| zoomBefore |
	
	zoomBefore := self model tiledMapMorph zoom.
	self model tiledMapMorph layoutChanged.
	self assert: zoomBefore equals: (self model tiledMapMorph zoom)