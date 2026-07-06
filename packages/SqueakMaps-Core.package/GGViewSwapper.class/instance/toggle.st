arranging
toggle
	
	self window removeMorph: self picture.
	self window removeMorph: self map.
	self mapIsLarge
		ifTrue: [
			self picture coverMode: true.
			self window addMorph: self picture fullFrame: self largeFrame.
			self window addMorph: self map fullFrame: self smallFrame]
		ifFalse: [
			self picture coverMode: false.
			self window addMorph: self map fullFrame: self largeFrame.
			self window addMorph: self picture fullFrame: self smallFrame].
	self mapIsLarge: self mapIsLarge not
	