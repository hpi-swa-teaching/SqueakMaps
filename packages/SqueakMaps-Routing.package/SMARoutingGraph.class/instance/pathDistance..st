as yet unclassified
pathDistance: aPath

	| distance edge |
	distance := 0.
	1 to: aPath size - 1 do: [:index |
		edge := self edgeFrom: (aPath at: index) to: (aPath at: index + 1).
		edge ifNil: [^ nil].
		distance := distance + (self edgeWeight: edge)].
	^ distance