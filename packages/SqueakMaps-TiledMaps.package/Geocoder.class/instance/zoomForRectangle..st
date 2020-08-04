as yet unclassified
zoomForRectangle: r
	"Compute using latitude, since its scale remains constant in the projection the tile system uses."
	"180 because north pole to south pole is 180 degrees, and latitude (on the y axis of r) is also in degrees."
	^ (180 / r height) floorLog: 2