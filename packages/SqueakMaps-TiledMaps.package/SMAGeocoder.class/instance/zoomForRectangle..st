as yet unclassified
zoomForRectangle: aRectangle
	"Compute using latitude, since its scale remains constant in the projection the tile system uses."
	"180 because north pole to south pole is 180 degrees, and latitude (on the y axis of r) is also in degrees."
	
	| latitude base |
	
	latitude := 180.
	base := 2.
	
	^ (latitude / aRectangle height) floorLog: base