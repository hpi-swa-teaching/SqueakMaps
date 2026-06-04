search
searchDirections

	| lastQuery |
	
	self clear.
	self mapConfigurator clearAllMarkers.
	self clearRoutes.
	
	(self hopLocations size < 2) ifTrue: [
		^ self inform: 'Please enter at least two hops.'].
	
	self hopLocations do: [:i| 
		lastQuery ifNil: [
			lastQuery := i.
		]; ifNotNil: [
			self searchDirectionsFrom: lastQuery to: i.
			lastQuery := i.
		].
	].

	self routes isEmpty ifFalse: [
	self mapConfigurator displayRoutes: self routes.]
