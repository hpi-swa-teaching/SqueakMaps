initialization
setWindow: aWindow picture: aPictureMorph map: aMapMorph

	self
		window: aWindow;
		picture: aPictureMorph;
		map: aMapMorph;
		largeFrame: (LayoutFrame new
			leftFraction: 0 offset: 0;
			rightFraction: 1 offset: 0;
			topFraction: 0.1 offset: 0;
			bottomFraction: 1 offset: 0;
			yourself);
		smallFrame: (LayoutFrame new
			leftFraction: 0.85 offset: 0;
			rightFraction: 1 offset: 0;
			topFraction: 0.8 offset: 0;
			bottomFraction: 1 offset: 0;
			yourself);
		mapIsLarge: false
