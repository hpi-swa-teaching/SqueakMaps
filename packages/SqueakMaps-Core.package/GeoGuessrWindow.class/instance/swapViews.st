guessing
swapViews

	| temp |
	temp := pictureMorph layoutFrame.
	pictureMorph layoutFrame: tiledMapMorph layoutFrame.
	tiledMapMorph layoutFrame: temp.
	self layoutChanged.
	mapIsLarge := mapIsLarge not.
	mapIsLarge ifTrue: [pictureMorph comeToFront] ifFalse: [tiledMapMorph comeToFront]