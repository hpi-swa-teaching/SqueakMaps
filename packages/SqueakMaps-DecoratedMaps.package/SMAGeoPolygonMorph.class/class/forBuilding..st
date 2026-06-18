as yet unclassified
forBuilding: aBuilding

	^ self new
		model: aBuilding;
		geoPoints: aBuilding points;
		label: aBuilding name;
		fillColor: (Color r: 120 / 255 g: 15 / 255 b: 45 / 255 alpha: 0.18);
		outlineColor: (Color r: 120 / 255 g: 15 / 255 b: 45 / 255);
		outlineWidth: 2;
		yourself