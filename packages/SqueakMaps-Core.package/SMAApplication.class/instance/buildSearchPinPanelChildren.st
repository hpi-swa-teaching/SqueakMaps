building
buildSearchPinPanelChildren

	| builder children |

	self selectedPin ifNil: [^ {}].

	builder := ToolBuilder default.
	children := self buildDetailActionRowChildren: builder
		start: #useSelectedPinAsStart
		startHelp: 'Diese Adresse als Startpunkt verwenden.'
		route: #routeToSelectedPin
		routeHelp: 'Route zu dieser Adresse berechnen.'
		top: -100 bottom: -52.
	self isSelectedPinSaved
		ifTrue: [children add: (builder build: (self buildSearchPinPanelRemovePinButton: builder))]
		ifFalse: [children add: (builder build: (self buildSearchPinPanelSavePinButton: builder))].

	^ children