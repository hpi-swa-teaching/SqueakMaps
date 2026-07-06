accessing
nextImage

	| paths |
	self selectedTarget ifNil: [^ self].
	paths := self imagePathsFor: self selectedTarget.
	paths size <= 1 ifTrue: [^ self].
	self selectedImageIndex:
		((self selectedImageIndex \\ paths size) + 1)
