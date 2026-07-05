building
nextCampusDetailImage

	| paths |
	self selectedCampusDetailTarget ifNil: [^ self].
	paths := self campusDetailImagePathsFor: self selectedCampusDetailTarget.
	paths size <= 1 ifTrue: [^ self].
	self selectedCampusDetailImageIndex:
		((self selectedCampusDetailImageIndex \\ paths size) + 1).
	self changed: #buildCampusDetailPanelChildren
