initialization
initialize

	super initialize.
	self color: Color gray.
	self clipSubmorphs: true.
	coverMode := true.
	
	picture := ImageMorph new.
	self addMorph: picture.
	loader := AssetLoader new.
	bild := loader getImage:  '/geoguesser_start_screen.png'.
	self unscaledImage: bild.
	