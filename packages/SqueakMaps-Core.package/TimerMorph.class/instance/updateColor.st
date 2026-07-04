updating
updateColor

	remainingSeconds > self warningThresholdSeconds 
		ifTrue: [label color: (Color r: 0.20 g: 0.78 b: 0.92)] 
		ifFalse: [
			remainingSeconds > self criticalThresholdSeconds
				ifTrue: [label color: (Color r: 0.9 g: 0.55 b: 0.1)]
				ifFalse: [label color: (Color r: 0.75 g: 0.25 b: 0.1)]]