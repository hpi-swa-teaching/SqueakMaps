accessing
campusDetailScaledFormFor: aForm

	| maxExtent scale factor |
	aForm ifNil: [^ self campusDetailPlaceholderImageForm].
	maxExtent := self campusDetailImageMaxExtent.
	scale := maxExtent / aForm extent.
	factor := scale x min: scale y.
	factor := factor min: 1.
	^ aForm magnifyBy: factor
