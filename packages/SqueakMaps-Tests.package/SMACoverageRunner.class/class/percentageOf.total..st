reporting
percentageOf: covered total: total
	^ total = 0
		ifTrue: [0.0]
		ifFalse: [covered * 100.0 / total]
