accessing
findOptimalRoute: aCollectionOfSMALocations

	| locations minCost currentCost lastLocation solution |

	locations := aCollectionOfSMALocations.
	
	minCost := SmallInteger maxVal.
	locations permutationsDo: [:p | 
		currentCost := 0.	
		p do: [:l | 
			lastLocation ifNil: [
				lastLocation := l.
			]; ifNotNil: [
				currentCost := currentCost + (self distanceFrom: lastLocation to: l).
			].
			lastLocation := l.
		].
		lastLocation := nil.
		currentCost < minCost ifTrue: [
			minCost := currentCost.
			solution := p copy.
		].
	].

	^ solution