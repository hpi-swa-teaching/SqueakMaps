initialize-release
initialize

	super initialize.
	self
		boundingBox: Rectangle new;
		points: OrderedCollection new;
		segments: OrderedCollection new;
		color: (Color r: 128 / 255 g: 205 / 255 b: 236 / 255)