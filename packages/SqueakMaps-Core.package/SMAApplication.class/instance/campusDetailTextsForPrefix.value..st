building
campusDetailTextsForPrefix: aString value: aValue

	| value words lines current continuationPrefix |

	value := aValue asString.
	words := value findTokens: ' '.
	lines := OrderedCollection new.
	current := aString.
	continuationPrefix := String streamContents: [:stream |
		aString size timesRepeat: [stream space]].
	words do: [:word |
		| candidate |
		candidate := current = aString
			ifTrue: [current , word]
			ifFalse: [current , ' ' , word].
		candidate size <= self campusDetailMaximumLineLength
			ifTrue: [current := candidate]
			ifFalse: [
				lines add: current.
				current := continuationPrefix , word]].
	lines add: current.
	^ lines