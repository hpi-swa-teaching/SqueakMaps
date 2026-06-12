guessing
swapViews

	self removeMorph: pictureMorph.
	self removeMorph: tiledMapMorph.

	mapIsLarge
		ifTrue: [
			self addMorph: self pictureMorph fullFrame: largeFrame.
			self addMorph: self tiledMapMorph fullFrame: smallFrame.]
		ifFalse: [
			self addMorph: self tiledMapMorph fullFrame: largeFrame.
			self addMorph: self pictureMorph fullFrame: smallFrame.].
	
	mapIsLarge := mapIsLarge not