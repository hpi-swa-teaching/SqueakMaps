helping
calculateMidPoint: firstPoint and: secondPoint

"Calculates the midpoint on a straight line on a plane between the two given Points."

	^ (firstPoint x + secondPoint x / 2) @ (firstPoint y + secondPoint y / 2)