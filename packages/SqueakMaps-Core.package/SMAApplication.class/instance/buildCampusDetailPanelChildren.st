building
buildCampusDetailPanelChildren

	(self selectedCampusDetailTarget isNil and: [self selectedPin isNil])
		ifTrue: [^ {}].
	self selectedCampusDetailTarget ifNil: [^ self buildSearchPinPanelChildren].

	^ self buildDetailActionRowChildren: ToolBuilder default
		start: #useSelectedDetailTargetAsStart
		startHelp: 'Diesen Ort als Startpunkt verwenden.'
		route: #routeToSelectedDetailTarget
		routeHelp: 'Route zu diesem Ort berechnen.'
		top: -60 bottom: 0