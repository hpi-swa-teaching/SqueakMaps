accessing
edgeFrom: u to: v

	^ (adjacencyList at: u)
		detect: [:edge | (edge otherVertex: u) = v]
		ifNone: [nil]
