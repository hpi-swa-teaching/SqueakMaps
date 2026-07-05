initialization
initialize

	super initialize.
	self color: Color transparent.
	self clipSubmorphs: true.
	self coverMode: true.
	
	self picture: ImageMorph new.
	self addMorph: self picture.
	self loader: AssetLoader new.
	self bild: (self loader getImage:  '/geoguesser_start_screen.png').
	self unscaledImage: self bild.
	