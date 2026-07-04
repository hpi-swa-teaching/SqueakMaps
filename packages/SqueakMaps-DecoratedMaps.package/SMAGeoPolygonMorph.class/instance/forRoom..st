initialization
forRoom: aRoom

	^ self new
		model: aRoom;
		geoPoints: aRoom points;
		label: aRoom ref;
		showsLabel: false;
		fillColor: self class roomFillColor;
		outlineColor: self class roomOutlineColor;
		outlineWidth: self class defaultOutlineWidth;
		yourself
