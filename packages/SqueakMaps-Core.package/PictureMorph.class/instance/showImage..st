displaying
showImage: aFilePath

	bild := loader getImage: aFilePath.
	self unscaledImage: bild.
	picture newForm: bild.
	self updateScaledImage