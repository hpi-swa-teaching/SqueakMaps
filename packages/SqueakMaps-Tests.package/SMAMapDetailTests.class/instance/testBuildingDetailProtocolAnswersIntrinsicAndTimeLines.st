testing
testBuildingDetailProtocolAnswersIntrinsicAndTimeLines

	| building presenter intrinsicLines timeLines |

	building := SMABuilding new
		buildingType: 'university';
		yourself.
	building addTimeInfo:
		(SMATimeInfo label: 'Öffnungszeiten' value: 'Mo-Fr 08:00-16:00').
	presenter := SMACampusDetailPresenter
		on: building
		mensaProvider: nil
		poiSource: SMADecoratedMapMorph new.
	intrinsicLines := presenter intrinsicLines.
	timeLines := presenter timeLines.

	self assert: intrinsicLines first key equals: 'Gebäudetyp'.
	self assert: intrinsicLines first value equals: 'university'.
	self assert: timeLines first key equals: 'Öffnungszeiten'.
	self assert: timeLines first value equals: 'Mo-Fr 08:00-16:00'
