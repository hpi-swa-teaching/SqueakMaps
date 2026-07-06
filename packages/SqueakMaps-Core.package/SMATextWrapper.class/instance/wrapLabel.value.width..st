wrapping
wrapLabel: aString value: aValue width: anInteger

	| value words lines current continuationPrefix |

	value := aValue asString.
	words := value findTokens: ' '.
	lines := OrderedCollection new.
	current := aString.
	continuationPrefix := String streamContents: [:stream |
		aString size timesRepeat: [stream space]].
	words do: [:word | | candidate |
		candidate := current = aString
			ifTrue: [current , word]
			ifFalse: [current , ' ' , word].
		candidate size <= anInteger
			ifTrue: [current := candidate]
			ifFalse: [
				lines add: current.
				current := continuationPrefix , word]].
	lines add: current.
	^ lines
