helping
maxWorldPosHeight
	"Return the maximum value of the height for the center worldpos, so that you don't see the worlds above and below"

	| worldHeight overlap |

	worldHeight := (2 raisedTo: self zoom) * self tileSize y.
	overlap := (worldHeight - self height) / 2.

	^ overlap / worldHeight