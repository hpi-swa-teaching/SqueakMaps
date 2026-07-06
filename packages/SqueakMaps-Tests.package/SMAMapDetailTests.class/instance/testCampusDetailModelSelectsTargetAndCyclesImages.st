testing
testCampusDetailModelSelectsTargetAndCyclesImages

	| model building |

	model := SMACampusDetailModel new.
	building := SMABuilding new
		name: 'HPI Hauptgebäude';
		yourself.
	model selectTarget: building.
	model nextImage.
	model previousImage.

	self assert: model selectedTarget equals: building.
	self assert: model selectedImageIndex equals: 1.
	self assert: (model imagePathsFor: building) size equals: 2
