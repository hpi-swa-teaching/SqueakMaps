building
buildingForRoom: aRoom

	| key |
	key := self buildingKeyForRoom: aRoom.
	key ifNil: [^ nil].
	^ self tiledMapMorph buildings
		detect: [:building | self building: building matchesRoomKey: key]
		ifNone: [nil]