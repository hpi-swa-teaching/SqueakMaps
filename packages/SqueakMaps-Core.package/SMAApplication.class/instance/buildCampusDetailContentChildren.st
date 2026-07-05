building
buildCampusDetailContentChildren

	| children |

	children := OrderedCollection new.
	self selectedCampusDetailTarget ifNil: [
		children addAll: (self buildCampusDetailTitleMorphsFrom: self selectedPin label).
		^ children].
	children addAll: (self buildCampusDetailTitleMorphsFrom:
		(self campusDetailTitleFor: self selectedCampusDetailTarget)).
	children addAll: (self buildCampusDetailLineMorphsFrom: {
		'Typ' -> (self campusDetailTypeFor: self selectedCampusDetailTarget) }).
	children addAll: (self buildCampusDetailLineMorphsFrom:
		(self campusDetailLinesFor: self selectedCampusDetailTarget)).

	^ children
