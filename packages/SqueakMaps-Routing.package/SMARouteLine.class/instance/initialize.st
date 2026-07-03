initialize-release
initialize 

	super initialize.
	self boundingBox: Rectangle new.
	self points: OrderedCollection new.
	self segments: OrderedCollection new.
	self color: (Color r: 128 / 255 g: 205 / 255 b: 236 / 255)