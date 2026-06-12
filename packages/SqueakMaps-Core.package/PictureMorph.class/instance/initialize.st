initialization
initialize

	super initialize.
	self color: Color gray.
	self clipSubmorphs: true.
	coverMode := true.
	picture := ImageMorph new.
	self addMorph: picture.
	loader := AssetLoader new.
	bild := loader getImage:  '/osm/TestPicture.png'.
	self originalImage: bild.