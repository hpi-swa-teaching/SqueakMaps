building
unassignedRoomTreeNodes

	^ (self tiledMapMorph rooms
		select: [:room | (self buildingForRoom: room) isNil])
		collect: [:room | self treeNodeForRoom: room]