accessing
scaledFormFor: aForm

	| scale factor |
	aForm ifNil: [^ self placeholderImageForm].
	scale := self imageMaxExtent / aForm extent.
	factor := scale x min: scale y.
	factor := factor min: 1.
	^ aForm magnifyBy: factor
