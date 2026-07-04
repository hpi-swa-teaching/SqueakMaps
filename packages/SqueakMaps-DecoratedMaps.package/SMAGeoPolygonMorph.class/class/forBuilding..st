initialization
forBuilding: aBuilding

	^ self new
		model: aBuilding;
		geoPoints: aBuilding points;
		label: aBuilding name;
		fillColor: self buildingFillColor;
		outlineColor: self buildingOutlineColor;
		outlineWidth: self defaultOutlineWidth;
		yourself
