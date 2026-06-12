as yet unclassified
updateScaledImage
    
	| scale factor scaledExtent offset |
	self originalImage isNil ifTrue: [^ self].
	scale := self extent / originalImage extent.
	factor := coverMode
		ifTrue: [scale x max: scale y]
		ifFalse: [scale x min: scale y].
	picture newForm: (originalImage magnifyBy: factor).
	scaledExtent := originalImage extent * factor.
	offset := (self extent - scaledExtent) // 2.
	picture bounds: (self position + offset extent: scaledExtent).
	self changed.
