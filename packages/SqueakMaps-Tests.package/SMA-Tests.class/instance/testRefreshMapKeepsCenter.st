api setting
testRefreshMapKeepsCenter
	| centerBefore |
	centerBefore := squeakMapsWindow tiledMapMorph center.
	squeakMapsWindow refreshMap.
	self assert: centerBefore equals: (squeakMapsWindow tiledMapMorph center)