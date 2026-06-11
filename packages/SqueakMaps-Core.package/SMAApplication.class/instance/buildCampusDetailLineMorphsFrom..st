building
buildCampusDetailLineMorphsFrom: aCollection

	| texts |

	texts := OrderedCollection new.
	(aCollection reject: [:line |
		line value isNil or: [line value asString isEmpty]])
			do: [:line |
				texts addAll: (self campusDetailTextsFor: line)].
	^ texts collect: [:text |
		StringMorph new
			contents: text;
			yourself]