as yet unclassified
centerOfVertices

	| sum |
	sum := self vertices
		inject: 0 @ 0
		into: [:acc :each | acc + each].

	^ sum / self vertices size