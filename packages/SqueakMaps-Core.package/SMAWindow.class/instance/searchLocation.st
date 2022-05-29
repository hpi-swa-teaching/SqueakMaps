search
searchLocation

	self searchInput isEmpty ifTrue: [
		UIManager default inform: 'Please enter a location.'.
		^ self].
	self tiledMapMorph route points: OrderedCollection new.
	self tiledMapMorph locate: self searchInput