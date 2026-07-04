building
building: aBuilding matchesRoomKey: aKey

	| name |
	name := aBuilding name ifNil: [^ false].
	^ (name = ('Haus ', aKey))
		or: [name endsWith: (' ', aKey)]