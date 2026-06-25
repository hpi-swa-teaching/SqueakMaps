building
searchDirections

	| startTarget destinationTarget routeLine |
	startTarget := self selectedStartRouteTarget.
	destinationTarget := self selectedDestinationRouteTarget.

	(startTarget isNil or: [destinationTarget isNil]) ifTrue: [
		^ self inform: 'Bitte Start und Destination auswählen.'].
	startTarget = destinationTarget ifTrue: [
		^ self inform: 'Start und Destination sind identisch.'].

	routeLine := self routingGraph
		routeFrom: startTarget
		to: destinationTarget
		inMap: self tiledMapMorph.
	routeLine ifNil: [^ self inform: 'Für diese Auswahl konnte keine Route gefunden werden.'].

	self tiledMapMorph route: routeLine.
	self route: routeLine.
	self hasSearched: true.
	self tiledMapMorph changed.
	self changed: #buildSidebarTopChildren