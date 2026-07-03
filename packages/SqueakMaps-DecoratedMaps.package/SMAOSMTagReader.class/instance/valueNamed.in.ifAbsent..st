as yet unclassified
valueNamed: aKey in: anElement ifAbsent: aBlock

	| tag |
	tag := anElement
		firstTagNamed: #tag
		with: [:each | (each attributeAt: #k) = aKey].
	tag ifNil: [^ aBlock value].
	^ tag attributeAt: #v