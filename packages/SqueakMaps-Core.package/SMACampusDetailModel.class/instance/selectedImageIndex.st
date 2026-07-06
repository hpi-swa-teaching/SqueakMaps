accessing
selectedImageIndex

	selectedImageIndex ifNil: [selectedImageIndex := 1].
	^ selectedImageIndex
