testing - map interaction
testMapClickDoubleClickDragAndZoom

	| map event handler clicked doubleClicked oldCenter hand |
	map := self configuredMap.
	clicked := nil.
	doubleClicked := nil.
	map onClickAction: [:point | clicked := point].
	map onDoubleClickAction: [:point | doubleClicked := point].
	event := SMATestMouseEvent new
		cursorPoint: map bounds center;
		position: map bounds center;
		yourself.
	map click: event.
	self assert: clicked notNil.
	map doubleClick: event.
	self assert: doubleClicked notNil.

	handler := SMATestGameHandler new.
	hand := SMATestHand new.
	event hand: hand.
	map gameHandler: handler.
	map mouseDown: event.
	self assert: handler lastEvent == event.
	self assert: hand receiver == map.

	oldCenter := map center.
	event cursorPoint: map bounds center + (10 @ 10).
	map mouseMove: event.
	self deny: map center = oldCenter.
	event wheelUp: true; wheelDown: false.
	map mouseWheel: event.
	event wheelUp: false; wheelDown: true.
	map mouseWheel: event.
	self assert: (map zoom between: map zoomMin and: map zoomMax)
