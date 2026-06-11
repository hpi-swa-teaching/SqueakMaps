building
buildCampusDetailPanelChildren

	| builder children |

	self selectedCampusDetailTarget ifNil: [^ {}].

	builder := ToolBuilder default.
	children := OrderedCollection new.

	children addAll: (self buildCampusDetailTitleMorphsFrom:
		(self campusDetailTitleFor: self selectedCampusDetailTarget)).
	children addAll: (self buildCampusDetailLineMorphsFrom: {
		'Typ' -> (self campusDetailTypeFor: self selectedCampusDetailTarget) }).
	children addAll: (self buildCampusDetailLineMorphsFrom:
		(self campusDetailLinesFor: self selectedCampusDetailTarget)).
	children add: (builder build: (self buildCampusDetailCloseButton: builder)).

	^ children