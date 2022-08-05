helping
boundingBoxFor: aCollectionOfSMALocations 

	| min max |
	
	min := Float infinity @ Float infinity.
	max := Float negativeInfinity @ Float negativeInfinity.

	aCollectionOfSMALocations do: [:location |
		min := min min: location boundingBox origin.
		max := max max: location boundingBox corner].
	
	^ Rectangle origin: min corner: max