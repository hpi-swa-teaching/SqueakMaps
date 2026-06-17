building
campusDetailPOILineFor: aCampusDetailTarget

	| poiIds pois |
	(aCampusDetailTarget respondsTo: #poiIds) ifFalse: [^ nil].

	poiIds := aCampusDetailTarget poiIds.
	poiIds isEmpty ifTrue: [^ nil].

	pois := self tiledMapMorph pointsOfInterest select: [:poi |
		poiIds includes: poi id].
	pois isEmpty ifTrue: [^ nil].

	^ 'POIs' -> (self campusDetailPOITextFor: pois)