building
roomsForBuilding: aBuilding

	^ self source rooms select: [:room |
		(self buildingForRoom: room) == aBuilding]
