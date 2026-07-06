building
unassignedRoomTreeNodes

	^ (self source rooms
		select: [:room | (self buildingForRoom: room) isNil])
		collect: [:room | self treeNodeForRoom: room]
