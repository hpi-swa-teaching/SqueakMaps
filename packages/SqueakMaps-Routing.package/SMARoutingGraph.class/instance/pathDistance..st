routing
pathDistance: aPath

	| distance |
	distance := 0.
	aPath overlappingPairsDo: [:from :to |
		| edge |
		edge := self edgeFrom: from to: to.
		edge ifNil: [^ nil].
		distance := distance + (self edgeWeight: edge)].
	^ distance
