as yet unclassified
forRoom: aRoom

	^ self new
		model: aRoom;
		geoPoints: aRoom points;
		label: aRoom ref;
		showsLabel: false;
		fillColor: (Color r: 249 / 255 g: 224 / 255 b: 58 / 255 alpha: 0.25);
		outlineColor: (Color r: 249 / 255 g: 224 / 255 b: 58 / 255);
		outlineWidth: 2;
		yourself