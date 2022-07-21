helping
clampCenterX: aNumber

	| overlapX newX |

	newX := aNumber.
	overlapX := ((aNumber - (aNumber truncated)) abs).

	(aNumber < 0) ifTrue: [newX := 1 - overlapX].
	(aNumber > 1) ifTrue: [newX := overlapX].

	^ newX