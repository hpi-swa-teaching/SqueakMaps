private
addWay: aRoutingWay

	aRoutingWay points overlappingPairsDo: [:firstId :secondId |
		| firstVertex secondVertex |
		firstVertex := self vertexForPointID: firstId.
		secondVertex := self vertexForPointID: secondId.
		(firstVertex notNil and: [secondVertex notNil]) ifTrue: [
			self addLevels: aRoutingWay levels toVertex: firstVertex.
			self addLevels: aRoutingWay levels toVertex: secondVertex.
			self addEdgeFrom: firstVertex to: secondVertex levels: aRoutingWay levels]]
