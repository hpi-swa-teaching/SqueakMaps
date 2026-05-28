accessing
distanceFrom: aSMALocation to: anotherSMALocation

	^ (((anotherSMALocation coordinates lat - aSMALocation coordinates lat) squared) + ((anotherSMALocation coordinates long - aSMALocation coordinates long) squared)) sqrt.