building
buildingForRoom: aRoom

	| key |
	key := self buildingKeyForRoom: aRoom.
	key ifNil: [^ nil].
	^ self source buildings
		detect: [:building | self building: building matchesRoomKey: key]
		ifNone: [nil]
