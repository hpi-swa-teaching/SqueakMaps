refreshing
testRefreshMapKeepsCenter

	| centerBefore |
	
	centerBefore := self model tiledMapMorph center.
	self model tiledMapMorph refreshMap.
	self assert: centerBefore equals: (self model tiledMapMorph center)