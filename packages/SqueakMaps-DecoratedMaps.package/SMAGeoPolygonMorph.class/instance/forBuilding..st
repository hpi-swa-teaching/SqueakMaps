initialization
forBuilding: aBuilding

	^ self new
		model: aBuilding;
		geoPoints: aBuilding points;
		label: aBuilding name;
		showsLabel: true;
		fillColor: self class buildingFillColor;
		outlineColor: self class buildingOutlineColor;
		outlineWidth: self class defaultOutlineWidth;
		yourself
