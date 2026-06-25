building
roomsForBuilding: aBuilding

	^ self tiledMapMorph rooms select: [:room |
		(self buildingForRoom: room) == aBuilding]