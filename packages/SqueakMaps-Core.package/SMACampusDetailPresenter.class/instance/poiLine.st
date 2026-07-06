building
poiLine

	| poiIds pois |

	poiIds := self target poiIds.
	poiIds isEmpty ifTrue: [^ nil].
	pois := self poiSource pointsOfInterest select: [:poi |
		poiIds includes: poi id].
	pois isEmpty ifTrue: [^ nil].
	^ 'POIs' -> (self poiTextFor: pois)
