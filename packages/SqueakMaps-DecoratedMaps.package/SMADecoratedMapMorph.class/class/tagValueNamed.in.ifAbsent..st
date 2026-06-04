as yet unclassified
tagValueNamed: aKey in: anElement ifAbsent: aBlock

	| tag |
	tag := anElement
		firstTagNamed: #tag
		with: [:el | (el attributeAt: #k) = aKey].

	tag ifNil: [^ aBlock value].

	^ tag attributeAt: #v