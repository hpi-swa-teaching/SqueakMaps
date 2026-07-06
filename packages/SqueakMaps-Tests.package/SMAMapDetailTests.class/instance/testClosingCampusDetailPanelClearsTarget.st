as yet unclassified
testClosingCampusDetailPanelClearsTarget

	| application building |
	application := SMAApplication new initializeMap.
	building := SMABuilding new
		name: 'Haus K';
		yourself.
	application
		selectCampusDetailTarget: building;
		closeCampusDetailPanel.
	
	self assert: application selectedCampusDetailTarget isNil