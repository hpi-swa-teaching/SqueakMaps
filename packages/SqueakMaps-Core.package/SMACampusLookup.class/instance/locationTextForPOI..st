labels
locationTextForPOI: aPOI

	| room building |
	room := self roomForPOI: aPOI.
	room ifNotNil: [^ room ref, ' / Etage ', room level asString].
	building := self buildingForPOI: aPOI.
	building ifNotNil: [^ building detailTitle].
	^ nil
