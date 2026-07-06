testing - timer
testTimerCountsDownChangesColorAndTimesOut

	| timer timedOut |
	timer := GGTimerMorph new.
	self assert: timer remainingSeconds equals: timer defaultSeconds.
	self deny: timer running.

	timer remainingSeconds: 31; updateColor.
	self assert: timer label color equals: (Color r: 0.20 g: 0.78 b: 0.92).
	timer remainingSeconds: 20; updateColor.
	self assert: timer label color equals: (Color r: 0.9 g: 0.55 b: 0.1).
	timer remainingSeconds: 10; updateColor.
	self assert: timer label color equals: (Color r: 0.75 g: 0.25 b: 0.1).

	timedOut := false.
	timer onTimeout: [timedOut := true].
	timer running: true; remainingSeconds: 1; step.
	self assert: timer remainingSeconds equals: 0.
	timer step.
	self assert: timedOut.
	self deny: timer running.
	timer reset.
	self assert: timer remainingSeconds equals: timer defaultSeconds
