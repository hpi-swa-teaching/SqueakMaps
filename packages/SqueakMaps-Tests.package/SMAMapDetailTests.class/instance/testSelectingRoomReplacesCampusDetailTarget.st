as yet unclassified
testSelectingRoomReplacesCampusDetailTarget

	| application building room |
	application := SMAApplication new initializeMap.
	building := SMABuilding new
		name: 'Haus K';
		yourself.
	room := SMARoom new
		ref: 'K-E.18';
		yourself.
	application
		selectCampusDetailTarget: building;
		selectCampusDetailTarget: room.
	
	self assert: application selectedCampusDetailTarget equals: room