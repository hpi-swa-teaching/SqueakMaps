initialization
initialize

	super initialize.
	self color: Color gray.
	picture := ImageMorph new.
	loader := AssetLoader new. 
	bild := loader getImage:  '/osm/TestPicture.png'.
	self originalImage: bild.
	self updateScaledImage.