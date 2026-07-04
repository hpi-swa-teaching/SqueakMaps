building
searchDirections

	| startTarget destinationTarget routeLine routeLocations |
	startTarget := self selectedStartRouteTarget.
	destinationTarget := self selectedDestinationRouteTarget.

	(startTarget isNil or: [destinationTarget isNil]) ifTrue: [
		^ self inform: 'Bitte Start und Destination auswählen.'].
	(self routeTarget: startTarget equals: destinationTarget) ifTrue: [
		^ self inform: 'Start und Destination sind identisch.'].

	routeLine := self routingFacade
		routeFrom: startTarget
		to: destinationTarget.
	routeLine ifNil: [^ self inform: 'Für diese Auswahl konnte keine Route gefunden werden.'].

	self route: routeLine.
	self hasSearched: true.
	routeLocations := {
		self locationForRouteTarget: startTarget.
		self locationForRouteTarget: destinationTarget } select: [:location | location notNil].
	self mapConfigurator clear.
	routeLocations do: [:location | self mapConfigurator displayLocation: location].
	self tiledMapMorph route: routeLine.
	routeLocations ifNotEmpty: [
		self mapConfigurator focusLocations: routeLocations atZoom: self routeFocusZoom].
	self changed: #buildSidebarTopChildren