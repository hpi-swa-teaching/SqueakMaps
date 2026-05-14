building
buildDirectionsHopList: aBuilder
	
	^ aBuilder pluggableListSpec new
		model: self;
		list: #hopSearchInputs;
		help: 'View the hops you added.';
		frame: (0 @ 0.68 corner: 1 @ 1);
		yourself