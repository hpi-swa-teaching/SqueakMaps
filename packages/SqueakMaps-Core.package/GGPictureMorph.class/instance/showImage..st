displaying
showImage: aFilePath

	self bild: (self loader getImage: aFilePath).
	self unscaledImage: self bild.
	self picture newForm: self bild.
	self updateScaledImage