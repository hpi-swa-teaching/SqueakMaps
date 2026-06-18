as yet unclassified
fromMapMorph: aMapMorph

	| vertices adjacencyList pointIDToVertex buildingVertices roomVertices poiVertices addVertex |
	vertices := OrderedCollection new.
	adjacencyList := OrderedCollection new.
	pointIDToVertex := Dictionary new.
	buildingVertices := Dictionary new.
	roomVertices := Dictionary new.
	poiVertices := Dictionary new.

	addVertex := [:point |
		vertices add: point.
		adjacencyList add: OrderedCollection new.
		point id ifNotNil: [pointIDToVertex at: point id put: vertices size].
		vertices size].

	aMapMorph buildings do: [:building |
		| center |
		center := self centerPointOf: building points.
		center ifNotNil: [buildingVertices at: building put: (addVertex value: center)]].
	aMapMorph rooms do: [:room |
		| center |
		center := self centerPointOf: room points.
		center ifNotNil: [roomVertices at: room put: (addVertex value: center)]].
	aMapMorph pointsOfInterest do: [:poi |
		poiVertices at: poi put: (addVertex value: poi)].

	aMapMorph buildings do: [:building |
		| buildingVertex |
		buildingVertex := buildingVertices at: building ifAbsent: [nil].
		buildingVertex ifNotNil: [
			aMapMorph rooms do: [:room |
				| roomVertex |
				roomVertex := roomVertices at: room ifAbsent: [nil].
				(roomVertex notNil and: [self room: room belongsToBuilding: building]) ifTrue: [
					self
						addEdgeFrom: buildingVertex
						to: roomVertex
						levels: {room level}
						adjacencyList: adjacencyList]].
			building poiIds do: [:poiId |
				| poi poiVertex |
				poi := self poiWithId: poiId in: aMapMorph pointsOfInterest.
				poi ifNotNil: [
					poiVertex := poiVertices at: poi ifAbsent: [nil].
					(poiVertex notNil and: [(aMapMorph rooms anySatisfy: [:room | room poiIds includes: poi id]) not]) ifTrue: [
						self addEdgeFrom: buildingVertex to: poiVertex levels: poi levels adjacencyList: adjacencyList]]]]].

	aMapMorph rooms do: [:room |
		| roomVertex |
		roomVertex := roomVertices at: room ifAbsent: [nil].
		roomVertex ifNotNil: [
			room poiIds do: [:poiId |
				| poi poiVertex |
				poi := self poiWithId: poiId in: aMapMorph pointsOfInterest.
				poi ifNotNil: [
					poiVertex := poiVertices at: poi ifAbsent: [nil].
					poiVertex ifNotNil: [
						self addEdgeFrom: roomVertex to: poiVertex levels: {room level} adjacencyList: adjacencyList]]]]].

	^ self new
		withVertices: vertices asArray
		adjacencyList: adjacencyList asArray
		andPointToVertexDict: pointIDToVertex