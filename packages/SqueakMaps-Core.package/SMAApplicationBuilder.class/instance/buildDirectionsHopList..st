building directions bar
buildDirectionsHopList: aBuilder
	
	^ aBuilder pluggableListSpec new
		model: self model;
		list: #hopLocationLabels;
		getIndex: #selectedHopIndex;
		setIndex: #selectedHopIndex:;
		dragItem: #dragItem:;
		dragType: #dragType:;
		dropItem: #dropItem:on:copy:;
		help: 'View the hops you added.';
		frame: (0 @ 0.4 corner: 1 @ 0.86);
		yourself