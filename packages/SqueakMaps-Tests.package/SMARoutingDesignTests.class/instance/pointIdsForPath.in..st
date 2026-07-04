as yet unclassified
pointIdsForPath: aPath in: aGraph

	^ aPath collect: [:vertex | (aGraph pointAtVertex: vertex) id]