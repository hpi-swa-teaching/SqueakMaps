helping
getBoundingBoxFitting: aFirstSMAMapLocationMarker and: aSecondSMAMapLocationMarker

	| firstBoundingBox secondBoundingBox resultBox diff1 diff2 left right top bottom |
	
	firstBoundingBox := aFirstSMAMapLocationMarker boundingBox.
	secondBoundingBox := aSecondSMAMapLocationMarker boundingBox.

	diff1 := ((firstBoundingBox at: 3) asNumber - (secondBoundingBox at: 4) asNumber) abs.
	diff2 := ((firstBoundingBox at: 4) asNumber - (secondBoundingBox at: 3) asNumber) abs.

	(diff1 > diff2) ifTrue: [
		left := firstBoundingBox at: 3.
		right := secondBoundingBox at: 4.]
	ifFalse: [
		left := secondBoundingBox at: 3.
		right := firstBoundingBox at: 4.].
	
	top := (firstBoundingBox at: 2) asNumber max: (secondBoundingBox at: 2) asNumber.
	bottom := (firstBoundingBox at: 1) asNumber min: (secondBoundingBox at: 1) asNumber.

	resultBox := Array new: 4.
	resultBox at: 1 put: (bottom asString).
	resultBox at: 2 put: (top asString).
	resultBox at: 3 put: left.
	resultBox at: 4 put: right.
	
	^ resultBox