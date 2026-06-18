as yet unclassified
extractBuildings: anXMLRoot forPoints: aDictOfPoints

	| buildings |
	buildings := OrderedCollection new.

	anXMLRoot tagsNamed: #way do: [:w |
		| buildingType |
		buildingType := self tagValueNamed: 'building' in: w ifAbsent: [nil].

		(buildingType notNil and: [buildingType ~= 'roof'])
			ifTrue: [
				| building |
				building := SMABuilding new
					name: (self tagValueNamed: 'name' in: w ifAbsent: ['']);
					buildingType: buildingType;
					poiIds: (self extractPOIIdsFrom: w);
					points: OrderedCollection new.

				w tagsNamed: #nd do: [:nd |
					| pointId |
					pointId := (nd attributeAt: #ref) asInteger.
					(aDictOfPoints includesKey: pointId)
						ifTrue: [building points add: (aDictOfPoints at: pointId)]].

				building points isEmpty
					ifFalse: [buildings add: building]]].

	^ buildings