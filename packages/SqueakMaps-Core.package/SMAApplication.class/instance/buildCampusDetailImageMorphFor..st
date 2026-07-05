building
buildCampusDetailImageMorphFor: aForm

	| scaled imageMorph container |
	scaled := self campusDetailScaledFormFor: aForm.
	imageMorph := ImageMorph new.
	imageMorph newForm: scaled.
	container := AlignmentMorph newColumn
		color: Color transparent;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		wrapCentering: #center;
		cellPositioning: #center;
		layoutInset: 4;
		yourself.
	container addMorphBack: imageMorph.
	^ container
