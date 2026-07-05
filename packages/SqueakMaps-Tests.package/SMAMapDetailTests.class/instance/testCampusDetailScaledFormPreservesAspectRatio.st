as yet unclassified
testCampusDetailScaledFormPreservesAspectRatio

	| application wideForm squareForm scaledWide scaledSquare maxExtent |
	application := SMAApplication basicNew.
	maxExtent := application campusDetailImageMaxExtent.

	wideForm := Form extent: 400 @ 200 depth: 32.
	squareForm := Form extent: 256 @ 256 depth: 32.

	scaledWide := application campusDetailScaledFormFor: wideForm.
	scaledSquare := application campusDetailScaledFormFor: squareForm.

	self assert: scaledWide width <= maxExtent x.
	self assert: scaledWide height <= maxExtent y.
	self assert: scaledWide width > scaledWide height.

	self assert: scaledSquare width <= maxExtent x.
	self assert: scaledSquare height <= maxExtent y.
	self assert: scaledSquare width equals: scaledSquare height
