displaying
showImage: aFilePath

	self image: (self loader getImage: aFilePath).
	self unscaledImage: self image.
	self picture newForm: self image.
	self updateScaledImage