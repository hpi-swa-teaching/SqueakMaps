as yet unclassified
extractBuildings: anXMLRoot forPoints: aDictionaryOfPoints

	| extractedBuildings |
	extractedBuildings := OrderedCollection new.
	anXMLRoot tagsNamed: #way do: [:element |
		| buildingType |
		buildingType := self tagValueNamed: 'building' in: element ifAbsent: [nil].
		(buildingType notNil and: [buildingType ~= 'roof']) ifTrue: [
			| building |
			building := SMABuilding new
				name: (self tagValueNamed: 'name' in: element ifAbsent: ['']);
				buildingType: buildingType;
				poiIds: (self extractPOIIdsFrom: element);
				points: OrderedCollection new.
			self addTimeInfosFrom: element to: building.
			element tagsNamed: #nd do: [:nodeReference |
				| pointId |
				pointId := (nodeReference attributeAt: #ref) asInteger.
				(aDictionaryOfPoints includesKey: pointId) ifTrue: [
					building points add: (aDictionaryOfPoints at: pointId)]].
			building points isEmpty ifFalse: [extractedBuildings add: building]]].
	^ extractedBuildings