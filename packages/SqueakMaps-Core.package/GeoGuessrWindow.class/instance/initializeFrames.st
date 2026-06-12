initialization
initializeFrames

	largeFrame := LayoutFrame new
	      leftFraction: 0   offset: 0;
	      rightFraction: 1  offset: 0;
	      topFraction: 0.1  offset: 0;
	      bottomFraction: 1 offset: 0.

 	smallFrame := LayoutFrame new
	      leftFraction: 0.85  offset: 0;
	      rightFraction: 1    offset: 0;
	      topFraction: 0.8    offset: 0;
	      bottomFraction: 1   offset: 0.
	
	self layoutPolicy: ProportionalLayout new.
	