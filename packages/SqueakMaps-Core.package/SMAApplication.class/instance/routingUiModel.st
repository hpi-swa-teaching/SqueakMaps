accessing
routingUiModel

	routingUiModel ifNil: [
		routingUiModel := SMARoutingUiModel new
			targetSource: self tiledMapMorph;
			yourself].
	self tiledMapMorph ifNotNil: [
		routingUiModel targetSource: self tiledMapMorph].
	^ routingUiModel
