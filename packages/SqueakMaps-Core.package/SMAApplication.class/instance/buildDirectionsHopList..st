building
buildDirectionsHopList: aBuilder
	
	^ aBuilder pluggableListSpec new
		model: self;
		list: #hopLocationLabels;
		getIndex: #selectedHopIndex;
		setIndex: #selectedHopIndex:;
		dragItem: #dragItem:;
		dragType: #dragType:;
		dropAccept: #wantsDrop:type:source:morph:on:;
		dropItem: #dropItem:on:copy:;
		help: 'View the hops you added.';
		frame: (0 @ 0.4 corner: 1 @ 0.86);
		yourself