accessing
levels: anObject

	levels := anObject ifNil: [OrderedCollection new] ifNotNil: [
		(anObject subStrings: $;) collect: [:each | each asInteger]
		"todo: support level=0;1;2"]