accessing
detailImagePaths

	internalName ifNil: [^ #()].
	internalName isEmpty ifTrue: [^ #()].
	^ { 'assets/img/people/' , internalName , '_256.png' }
