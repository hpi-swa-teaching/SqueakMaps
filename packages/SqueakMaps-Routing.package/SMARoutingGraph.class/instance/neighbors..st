as yet unclassified
neighbors: u

	^ (adjacencyList at: u) collect: [:edge | edge otherVertex: u]