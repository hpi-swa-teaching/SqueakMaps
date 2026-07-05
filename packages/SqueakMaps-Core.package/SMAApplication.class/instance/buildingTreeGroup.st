building
buildingTreeGroup

	| group unassigned weitere |
	group := SMAListNode new label: 'Gebäude'; yourself.
	self tiledMapMorph buildings do: [:building |
		building detailTitle isEmpty ifFalse: [
			group addChild: (self treeNodeForBuilding: building)]].
	unassigned := self unassignedRoomTreeNodes.
	unassigned isEmpty ifFalse: [
		weitere := SMAListNode new label: 'Weitere Räume'; yourself.
		weitere children: unassigned asOrderedCollection.
		group addChild: weitere].
	^ group