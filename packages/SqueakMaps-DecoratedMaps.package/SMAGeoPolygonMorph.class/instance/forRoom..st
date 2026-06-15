as yet unclassified
forRoom: aRoom

	^ self new
		model: aRoom;
		geoPoints: aRoom points;
		label: aRoom ref;
		showsLabel: false;
		fillColor: (Color r: 1.0 g: 0.8 b: 0.0 alpha: 0.35);
		outlineColor: Color orange;
		outlineWidth: 2;
		yourself