as yet unclassified
testCampusDetailTimeLinesForTargetWithTimeInfos

	| application poi lines |
	application := SMAApplication basicNew.
	poi := SMAPOIDrinkingWater new.
	poi addTimeInfo: (SMATimeInfo label: 'Öffnungszeiten' value: 'Mo-Fr 08:00-16:00').
	poi addTimeInfo: (SMATimeInfo label: 'Küchenzeiten' value: 'Mo-Fr 11:30-14:00').

	lines := application campusDetailTimeLinesFor: poi.

	self assert: lines size equals: 2.
	self assert: lines first key equals: 'Öffnungszeiten'.
	self assert: lines first value equals: 'Mo-Fr 08:00-16:00'.
	self assert: lines last key equals: 'Küchenzeiten'.
	self assert: lines last value equals: 'Mo-Fr 11:30-14:00'