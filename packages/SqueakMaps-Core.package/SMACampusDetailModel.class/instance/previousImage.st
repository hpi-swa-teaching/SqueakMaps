accessing
previousImage

	| paths index |
	self selectedTarget ifNil: [^ self].
	paths := self imagePathsFor: self selectedTarget.
	paths size <= 1 ifTrue: [^ self].
	index := self selectedImageIndex - 2.
	self selectedImageIndex: (index \\ paths size) + 1
