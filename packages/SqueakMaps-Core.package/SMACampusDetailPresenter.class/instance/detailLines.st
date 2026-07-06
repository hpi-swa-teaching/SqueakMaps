building
detailLines

	| lines |

	lines := OrderedCollection new.
	lines addAll: self intrinsicLines.
	lines addAll: self timeLines.
	lines addAll: self mensaLines.
	self poiLine ifNotNil: [:line | lines add: line].
	^ lines reject: [:line |
		line value isNil or: [line value asString isEmpty]]
