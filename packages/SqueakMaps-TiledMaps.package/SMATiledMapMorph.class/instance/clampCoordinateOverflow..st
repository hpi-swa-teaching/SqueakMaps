helping
clampCoordinateOverflow: aNumber
	"Clamps a number to be mapped on the range between 0 and 1"

	| newCoordinate overlap |

	newCoordinate := aNumber.
	overlap := (aNumber - aNumber truncated) abs.

	(aNumber < 0) ifTrue: [newCoordinate := 1 - overlap].
	(aNumber > 1) ifTrue: [newCoordinate := overlap].

	^ newCoordinate