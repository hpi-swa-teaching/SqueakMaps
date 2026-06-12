as yet unclassified
updateScaledImage
    
	self originalImage isNil ifTrue: [^ self].
	picture newForm: (originalImage scaledToSize: self extent).
	self addMorph: picture.
	self changed.
