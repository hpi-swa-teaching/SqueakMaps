route management
createOverlayFor: bounds

	^ Morph new
		color: (Color gray alpha: 0.6);
		extent: bounds extent;
		position: bounds origin;
		yourself