building
buildCampusDetailScrollPane: aBuilder

	| content scrollPane |

	content := AlignmentMorph newColumn
		color: Color transparent;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		wrapCentering: #topLeft;
		cellPositioning: #topLeft;
		layoutInset: 0;
		cellGap: 0;
		yourself.
	(self buildCampusDetailContentChildrenWith: aBuilder) do: [:morph |
		content addMorphBack: morph].

	scrollPane := aBuilder build: (aBuilder pluggableScrollPaneSpec new
		model: self;
		morph: content;
		frame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1)
			offsets: (0 @ 36 corner: 0 @ (self selectedCampusDetailTarget
				ifNil: [-104]
				ifNotNil: [-64])));
		hScrollBarPolicy: #never;
		vScrollBarPolicy: #whenNeeded;
		yourself).
	scrollPane
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		borderWidth: 0.
	^ scrollPane