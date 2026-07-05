building
previousCampusDetailImage

	| paths index |
	self selectedCampusDetailTarget ifNil: [^ self].
	paths := self campusDetailImagePathsFor: self selectedCampusDetailTarget.
	paths size <= 1 ifTrue: [^ self].
	index := self selectedCampusDetailImageIndex - 2.
	self selectedCampusDetailImageIndex: (index \\ paths size) + 1.
	self changed: #buildCampusDetailPanelChildren
