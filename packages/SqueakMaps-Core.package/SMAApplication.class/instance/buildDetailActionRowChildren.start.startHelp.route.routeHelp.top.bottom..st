building
buildDetailActionRowChildren: aBuilder start: aStartSelector startHelp: aStartHelp route: aRouteSelector routeHelp: aRouteHelp top: aTop bottom: aBottom

	| children |
	children := OrderedCollection new.
	children add: (self buildCampusDetailScrollPane: aBuilder).
	children add: (aBuilder build: (self buildCampusDetailCloseButton: aBuilder)).
	children add: (aBuilder build: (self buildDetailActionButton: aBuilder
		label: 'Als Start'
		action: aStartSelector
		frame: (LayoutFrame fractions: (0 @ 1 corner: 0.5 @ 1) offsets: (0 @ aTop corner: 0 @ aBottom))
		help: aStartHelp)).
	children add: (aBuilder build: (self buildDetailActionButton: aBuilder
		label: 'Route hierhin'
		action: aRouteSelector
		frame: (LayoutFrame fractions: (0.5 @ 1 corner: 1 @ 1) offsets: (0 @ aTop corner: 0 @ aBottom))
		help: aRouteHelp)).
	^ children