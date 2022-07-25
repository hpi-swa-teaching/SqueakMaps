helping
clampZoom: anInteger
	"Clamps a number to be in the range of the allowed minimum and maximum values for the zoom level"

	^ (anInteger max: self zoomMin) min: self zoomMax