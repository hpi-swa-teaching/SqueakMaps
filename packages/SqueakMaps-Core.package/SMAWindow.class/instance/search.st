search
search

	| searchBarText secondSearchBarText |
	searchBarText := self searchBar text asString.
	secondSearchBarText := self secondSearchBar text asString.
	
	searchBarText isEmpty ifTrue: [
		UIManager default inform: 'Please enter Search Location.'.
		^ self].
	(searchBarText notEmpty and: [secondSearchBarText notEmpty]) ifTrue:[
		self searchMultipleLocations.
		^ self].
	(searchBarText notEmpty and: [secondSearchBarText isEmpty]) ifTrue:[
		self searchLocation.
		^ self]
