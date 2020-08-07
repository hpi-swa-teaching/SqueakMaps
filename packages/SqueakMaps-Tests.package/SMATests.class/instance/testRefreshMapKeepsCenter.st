api setting
testRefreshMapKeepsCenter
	| centerBefore |
	centerBefore := squeakMapsWindow tiledMapMorph center.
	squeakMapsWindow tiledMapMorph refreshMap.
	self assert: centerBefore equals: (squeakMapsWindow tiledMapMorph center)