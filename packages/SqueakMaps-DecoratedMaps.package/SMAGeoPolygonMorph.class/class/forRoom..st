initialization
forRoom: aRoom

	^ self new
		model: aRoom;
		geoPoints: aRoom points;
		label: aRoom ref;
		fillColor: self roomFillColor;
		outlineColor: self roomOutlineColor;
		outlineWidth: self defaultOutlineWidth;
		yourself
