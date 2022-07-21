helping
maxWorldPosHeight

	| worldHeight overlap |

	worldHeight := (2 raisedTo: (self zoom)) * self tileSize y.
	overlap := (worldHeight - self height) / 2.

	^ overlap / worldHeight