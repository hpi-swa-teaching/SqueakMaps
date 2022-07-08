accessing
getCenterLatLong

	"Calculates the midpoint on a straight line on a plane between the two given Points."

	| firstPoint secondPoint |
	firstPoint := self points first.
	secondPoint := self points last.

	^ (firstPoint x + secondPoint x / 2) @ (firstPoint y + secondPoint y / 2)