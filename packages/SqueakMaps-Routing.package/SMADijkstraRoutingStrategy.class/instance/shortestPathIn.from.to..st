routing
shortestPathIn: aRoutingGraph from: startVertex to: destinationVertex

	| distances previous visited current alternative neighbor path |
	distances := Array new: aRoutingGraph size withAll: Float infinity.
	previous := Array new: aRoutingGraph size withAll: nil.
	visited := Array new: aRoutingGraph size withAll: false.
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
		aRoutingGraph incidentEdgesOf: current do: [:edge |
			neighbor := edge otherVertex: current.
			(visited at: neighbor) ifFalse: [
				alternative := (distances at: current) + (aRoutingGraph edgeWeight: edge).
				alternative < (distances at: neighbor) ifTrue: [
					distances at: neighbor put: alternative.
					previous at: neighbor put: current]]]].
	^ nil
