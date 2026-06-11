as yet unclassified
testSelectingBuildingSetsCampusDetailTarget

	| application building |

	application := SMAApplication new.
	building := SMABuilding new
		name: 'Haus K';
		yourself.
	application selectCampusDetailTarget: building.

	self assert: application selectedCampusDetailTarget equals: building