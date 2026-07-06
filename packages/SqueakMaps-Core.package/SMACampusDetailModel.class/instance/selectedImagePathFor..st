accessing
selectedImagePathFor: aCampusDetailTarget

	| paths index |
	paths := self imagePathsFor: aCampusDetailTarget.
	paths isEmpty ifTrue: [^ nil].
	index := self selectedImageIndex max: 1.
	index := ((index - 1) \\ paths size) + 1.
	self selectedImageIndex: index.
	^ paths at: index
