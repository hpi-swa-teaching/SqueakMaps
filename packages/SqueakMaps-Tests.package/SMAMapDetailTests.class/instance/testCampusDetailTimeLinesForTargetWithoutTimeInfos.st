as yet unclassified
testCampusDetailTimeLinesForTargetWithoutTimeInfos

	| application poi lines |
	application := SMAApplication basicNew.
	poi := SMAPOIDrinkingWater new.

	lines := application campusDetailTimeLinesFor: poi.

	self assert: lines isEmpty