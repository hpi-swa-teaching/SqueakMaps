as yet unclassified
testSelectingRoomReplacesCampusDetailTarget

	| application building room |

	application := SMAApplication new.
	building := SMABuilding new
		name: 'Haus K';
		yourself.
	room := SMARoom new
		ref: 'K-E.18';
		yourself.
	application selectCampusDetailTarget: building.
	application selectCampusDetailTarget: room.

	self assert: application selectedCampusDetailTarget equals: room