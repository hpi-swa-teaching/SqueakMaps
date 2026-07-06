building
poisToFilterFor: aNode

	^ (self leafTargetsUnder: aNode)
		select: [:each | each isPOI]
