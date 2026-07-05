accessing
campusDetailSelectedImagePathFor: aCampusDetailTarget

	| paths index |
	paths := self campusDetailImagePathsFor: aCampusDetailTarget.
	paths isEmpty ifTrue: [^ nil].
	index := self selectedCampusDetailImageIndex max: 1.
	index := ((index - 1) \\ paths size) + 1.
	self selectedCampusDetailImageIndex: index.
	^ paths at: index
