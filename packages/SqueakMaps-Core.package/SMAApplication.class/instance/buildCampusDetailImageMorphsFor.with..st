building
buildCampusDetailImageMorphsFor: aCampusDetailTarget with: aBuilder

	| path form morphs |
	(self campusDetailHasImagesFor: aCampusDetailTarget) ifFalse: [^ #()].
	path := self campusDetailSelectedImagePathFor: aCampusDetailTarget.
	form := self campusDetailImageFormFor: path.
	morphs := OrderedCollection new.
	morphs add: (self buildCampusDetailImageMorphFor: form).
	morphs addAll: (self buildCampusDetailImageNavigationMorphsFor: aCampusDetailTarget with: aBuilder).
	^ morphs
