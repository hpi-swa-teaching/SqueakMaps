building
buildStartMenuButton: anAssociation with: aBuilder

	^ aBuilder pluggableButtonSpec new
		label: anAssociation key;
		model: self;
		action: anAssociation value;
		frame: (0.25 @ 0.35 corner: 0.75 @ 0.55);
		yourself
