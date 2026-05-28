building
buildDirectionsHopList: aBuilder
	
	^ aBuilder pluggableListSpec new
		model: self;
		list: #hopLocationLabels;
		help: 'View the hops you added.';
		frame: (0 @ 0.36 corner: 1 @ 0.86);
		yourself