building
buildCampusDetailImageNavigationMorphsFor: aCampusDetailTarget with: aBuilder

	| paths row |
	paths := self campusDetailImagePathsFor: aCampusDetailTarget.
	paths size <= 1 ifTrue: [^ #()].
	row := AlignmentMorph newRow
		color: Color transparent;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		layoutInset: 0;
		cellGap: 4;
		yourself.
	row addMorphBack: (aBuilder build: (aBuilder pluggableButtonSpec new
		label: '<';
		model: self;
		action: #previousCampusDetailImage;
		help: 'Vorheriges Bild anzeigen.';
		yourself)).
	row addMorphBack: (StringMorph new
		contents: self selectedCampusDetailImageIndex asString , ' / ' , paths size asString;
		yourself).
	row addMorphBack: (aBuilder build: (aBuilder pluggableButtonSpec new
		label: '>';
		model: self;
		action: #nextCampusDetailImage;
		help: 'Naechstes Bild anzeigen.';
		yourself)).
	^ { row }
