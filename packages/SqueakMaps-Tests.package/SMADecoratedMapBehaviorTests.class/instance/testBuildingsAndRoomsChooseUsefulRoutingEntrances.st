testing - models
testBuildingsAndRoomsChooseUsefulRoutingEntrances

	| main entrance door plain building room |
	main := self pointId: 1 lat: 52 lon: 13.
	main entrance: 'main'.
	entrance := self pointId: 2 lat: 52 lon: 13.1.
	entrance entrance: 'yes'.
	door := self pointId: 3 lat: 52 lon: 13.2.
	door door: 'yes'.
	plain := self pointId: 4 lat: 52 lon: 13.3.

	building := SMABuilding new name: 'HPI'; points: {plain. door. entrance. main}; yourself.
	self assert: building routingEntranceCandidates asArray equals: {main}.
	building points: {plain. door. entrance}.
	self assert: building routingEntranceCandidates asArray equals: {entrance}.
	building points: {plain. door}.
	self assert: building routingEntranceCandidates asArray equals: {door}.

	room := SMARoom new ref: 'K-E.18'; level: 0; points: {plain. door}; yourself.
	self assert: room routingEntranceCandidates asArray equals: {door}.
	self assert: room detailTitle equals: 'K-E.18'.
	self assert: room detailType equals: 'Raum'
