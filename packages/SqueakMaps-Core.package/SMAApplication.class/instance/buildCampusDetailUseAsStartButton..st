building
buildCampusDetailUseAsStartButton: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: 'Als Start';
		model: self;
		padding: 8;
		frame: (LayoutFrame fractions: (0 @ 1 corner: 0.5 @ 1)
			offsets: (0 @ -60 corner: 0 @ 0));
		action: #useSelectedDetailTargetAsStart;
		help: 'Diesen Ort als Startpunkt verwenden.';
		yourself