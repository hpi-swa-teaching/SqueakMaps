refreshing
testLayoutChangedKeepsCenter

	| centerBefore |
	
	centerBefore := self model tiledMapMorph center.
	self model tiledMapMorph layoutChanged.
	self assert: centerBefore equals: (self model tiledMapMorph center)