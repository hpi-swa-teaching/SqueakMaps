building
buildCampusDetailContentChildrenWith: aBuilder

	| children target |
	target := self selectedCampusDetailTarget.
	children := OrderedCollection new.
	target ifNil: [
		children addAll: (self buildCampusDetailTitleMorphsFrom: self selectedPin label).
		^ children].
	children addAll: (self buildCampusDetailTitleMorphsFrom:
		(self campusDetailTitleFor: target)).
	children addAll: (self buildCampusDetailImageMorphsFor: target with: aBuilder).
	children addAll: (self buildCampusDetailLineMorphsFrom: {
		'Typ' -> (self campusDetailTypeFor: target) }).
	children addAll: (self buildCampusDetailLineMorphsFrom:
		(self campusDetailLinesFor: target)).
	^ children