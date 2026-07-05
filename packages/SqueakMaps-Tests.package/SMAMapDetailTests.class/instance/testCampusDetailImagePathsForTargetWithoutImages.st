as yet unclassified
testCampusDetailImagePathsForTargetWithoutImages

	| application poi paths |
	application := SMAApplication basicNew.
	poi := SMAPOI new.

	paths := application campusDetailImagePathsFor: poi.

	self assert: paths isEmpty
