building
buildCampusDetailPanelChildren

	| builder children |

	self selectedCampusDetailTarget ifNil: [^ {}].

	builder := ToolBuilder default.
	children := OrderedCollection new.

	children add: (self buildCampusDetailScrollPane: builder).
	children add: (builder build: (self buildCampusDetailCloseButton: builder)).

	^ children