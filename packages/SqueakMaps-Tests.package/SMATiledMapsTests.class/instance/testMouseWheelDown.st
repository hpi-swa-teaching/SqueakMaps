as yet unclassified
testMouseWheelDown

	|mouseWheelDownEvent initialZoom|
	
	tiledMapMorph zoom: 5.
	initialZoom := tiledMapMorph zoom.
	mouseWheelDownEvent := MouseWheelEvent new.
	mouseWheelDownEvent position: tiledMapMorph bounds center;
							setWheelDown. 	
													
	tiledMapMorph mouseWheel: mouseWheelDownEvent.
	self assert: initialZoom > tiledMapMorph zoom