building
searchDirections

	| startTarget destinationTarget result routeLine routeLocations |

	startTarget := self selectedStartRouteTarget.
	destinationTarget := self selectedDestinationRouteTarget.

	(startTarget isNil or: [destinationTarget isNil]) ifTrue: [
		^ self inform: 'Bitte Start und Destination auswählen.'].
	(self routeTarget: startTarget equals: destinationTarget) ifTrue: [
		^ self inform: 'Start und Destination sind identisch.'].

	self routingFacade.
	result := self routingUiModel
		routeResultFrom: startTarget
		to: destinationTarget.
	result ifNil: [
		^ self inform: 'Für diese Auswahl konnte keine Route gefunden werden.'].

	routeLine := result first.
	routeLocations := result second.
	self route: routeLine.
	self hasSearched: true.
	self mapConfigurator clear.
	routeLocations do: [:location | self mapConfigurator displayLocation: location].
	self tiledMapMorph route: routeLine.
	routeLocations ifNotEmpty: [
		self mapConfigurator focusLocations: routeLocations atZoom: self routeFocusZoom].
	self changed: #buildSidebarTopChildren
