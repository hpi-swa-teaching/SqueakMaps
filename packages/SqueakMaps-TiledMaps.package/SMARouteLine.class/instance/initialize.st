initialize-release
initialize 

	super initialize.
	self boundingBox: Rectangle new.
	self points: OrderedCollection new.
	self color: Color blue