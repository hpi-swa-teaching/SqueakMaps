accessing
placeholderImageForm

	| form |
	form := Form extent: self imageMaxExtent depth: 32.
	form fillColor: Color gray.
	^ form
