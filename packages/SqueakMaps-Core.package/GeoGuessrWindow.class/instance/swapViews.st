guessing
swapViews

	mapIsLarge
		ifTrue: [
			self 
				addMorph: pictureMorph frame: largeFrame;
				addMorph: tiledMapMorph frame: smallFrame. ]
		ifFalse: [
			self
				addMorph: tiledMapMorph frame: largeFrame;
				addMorph: pictureMorph frame: smallFrame. ].
	mapIsLarge := mapIsLarge not
