displaying
showImage: aFilePath

	bild := loader getImage: aFilePath.
	picture newForm: bild
