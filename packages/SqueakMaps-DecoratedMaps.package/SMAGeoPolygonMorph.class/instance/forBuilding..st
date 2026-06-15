as yet unclassified
forBuilding: aBuilding

	^ self new
		model: aBuilding;
		geoPoints: aBuilding points;
		label: aBuilding name;
		showsLabel: true;
		fillColor: (Color r: 0.2 g: 0.45 b: 1.0 alpha: 0.20);
		outlineColor: Color blue;
		outlineWidth: 2;
		yourself