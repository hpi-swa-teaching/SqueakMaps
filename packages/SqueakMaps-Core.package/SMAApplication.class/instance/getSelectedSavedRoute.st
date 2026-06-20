building
getSelectedSavedRoute

	| selectedRoutes|
	selectedRoutes := OrderedCollection new.
	1 to: (self savedRoutes) size do: [:i | 
		(self routeSelectionList at: i) ifTrue: [ selectedRoutes add: (self savedRoutes at: i)] ].

	^ selectedRoutes