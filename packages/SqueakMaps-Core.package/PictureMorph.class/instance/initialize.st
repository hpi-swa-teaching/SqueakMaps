initialization
initialize

	super initialize.
	self color: Color transparent.
	self clipSubmorphs: true.
	coverMode := true.
	
	picture := ImageMorph new.
	self addMorph: picture.
	loader := AssetLoader new.
	