as yet unclassified
shortestPathFrom: startVertex to: destinationVertex

	| distances previous visited current alternative neighbor path |
	distances := Array new: vertices size withAll: 1.0e100.
	previous := Array new: vertices size withAll: nil.
	visited := Array new: vertices size withAll: false.
	distances at: startVertex put: 0.

	[current := self unvisitedVertexWithSmallestDistance: distances visited: visited.
	current notNil] whileTrue: [
		current = destinationVertex ifTrue: [
			path := OrderedCollection new.
			[current notNil] whileTrue: [
				path addFirst: current.
				current := previous at: current].
			^ path].
		visited at: current put: true.
		self incidentEdgesOf: current do: [:edge |
			neighbor := edge otherVertex: current.
			(visited at: neighbor) ifFalse: [
				alternative := (distances at: current) + (self edgeWeight: edge).
				alternative < (distances at: neighbor) ifTrue: [
					distances at: neighbor put: alternative.
					previous at: neighbor put: current]]]].
	^ nil