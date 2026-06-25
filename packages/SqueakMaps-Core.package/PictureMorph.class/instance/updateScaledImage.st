as yet unclassified
updateScaledImage
    
	| scale factor scaledExtent offset |
	self unscaledImage isNil ifTrue: [^ self].
	scale := self extent / self unscaledImage extent.
	factor := coverMode
		ifTrue: [scale x max: scale y]
		ifFalse: [scale x min: scale y].
	picture newForm: (self unscaledImage magnifyBy: factor).
	scaledExtent := self unscaledImage extent * factor.
	offset := (self extent - scaledExtent) // 2.
	picture bounds: (self position + offset extent: scaledExtent).
	self changed.
