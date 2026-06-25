as yet unclassified
updateColor

	remainingSeconds > 30 ifTrue: [label color: (Color r: 0.1 g: 0.45 b: 0.55)] ifFalse: [
		remainingSeconds > 15
			ifTrue: [label color: (Color r: 0.9 g: 0.55 b: 0.1)]
			ifFalse: [label color: (Color r: 0.75 g: 0.25 b: 0.1)]]