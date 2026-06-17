as yet unclassified
testClosingCampusDetailPanelClearsTarget

	| application building |

	application := SMAApplication new.
	building := SMABuilding new
		name: 'Haus K';
		yourself.
	application selectCampusDetailTarget: building.
	application closeCampusDetailPanel.

	self assert: application selectedCampusDetailTarget isNil
